[![Travis (.org) branch](https://img.shields.io/travis/autoteyle/docker-chrome-headless/master)](https://travis-ci.org/autoteyle/docker-chrome-headless)
[![Docker Pulls](https://img.shields.io/docker/pulls/autoteyle/chrome-headless)](https://hub.docker.com/r/autoteyle/chrome-headless)
[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/autoteyle/docker-chrome-headless)](https://hub.docker.com/repository/docker/autoteyle/chrome-headless/tags?page=1)

# Docker Chrome Headless
Provides containerized [Google Chrome](https://www.google.com/chrome/) for remote debugging using
[Chrome DevTools Protocol](https://chromedevtools.github.io/devtools-protocol/) in the headless mode.

Can be utilized together with [Puppeteer](https://github.com/puppeteer/puppeteer) or [Selenium](https://www.selenium.dev/)
for browser automation purposes.

## Usage

    docker-compose up -d

## Configuration
Use environment variables for the configuration.

Available parameters along with the default values listed below.

    REMOTE_DEBUGGING_PORT: 9222
    REMOTE_DEBUGGING_ADDRESS: 0.0.0.0

## Development
Run locally built image

    docker-compose up

Rebuild image

    docker-compose build

## Maintainers

- [build-failure](https://github.com/build-failure)

## License

See the [LICENSE.md](LICENSE.md) file for details
