# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.2.0] - 2022-04-03
### Added
- `LOG_LEVEL` ENV Var to control the level of logging
### Updated
- Home Assistant support
- Documentation
- License
- Dependencies
### Fixed
- Bumped amcrest2mqtt version to `v1.0.15`
- Size reports in GB
- ping command now uses an HTTP Request instead of `ping` unix command
- Logging now properly implemented

## [1.1.1] - 2021-08-22
### Added
- Initial Helm Chart
### Fixed
- Ping failing [#1](https://github.com/maxirus/amcrest2mqtt/issues/1)
- MQTT Client ID collision [#2](https://github.com/maxirus/amcrest2mqtt/issues/2)

## [1.1.0] - 2021-08-21
### Updated
- Docker image now uses debian
### Fixed
- Python error on Raspberry Pi [#20](https://github.com/dchesterton/amcrest2mqtt/issues/20)