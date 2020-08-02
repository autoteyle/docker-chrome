FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true
ENV REMOTE_DEBUGGING_PORT=9222
ENV REMOTE_DEBUGGING_ADDRESS=0.0.0.0

RUN apt-get update && apt-get install -qqy \
    wget \
    gnupg2 \
    tzdata \
    ca-certificates \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

ENV TZ "UTC"
RUN echo "${TZ}" > /etc/timezone \
  && dpkg-reconfigure --frontend noninteractive tzdata

ARG CHROME_VERSION="google-chrome-stable"
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
  && apt-get update -qqy \
  && apt-get -qqy install \
    ${CHROME_VERSION:-google-chrome-stable} \
  && rm /etc/apt/sources.list.d/google-chrome.list \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

COPY .docker /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD [ "google-chrome", \
    "--no-sandbox", \
    "--headless" \
]
