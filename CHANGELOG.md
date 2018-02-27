# Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format listed [here](https://github.com/sensu-plugins/community/blob/master/HOW_WE_CHANGELOG.md)

## [Unreleased]

### Security
- updated rubocop dependency to `~> 0.51.0` per: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-8418 (@majormoses)

### Breaking Changes
- removed ruby `< 2.1` support (@majormoses)

### Changed
- updated Changelog guidelines location (@majormoses)

## [1.0.1] - 2017-08-04
### Fixed
- check-xmpp-login.rb do not rescue from SystemExit (@ushis)

## [1.0.0] - 2017-05-16
### Added
- check-xmpp-login.rb (@ushis)
- Support for Ruby 2.3 and 2.4 (@eheydrick)

### Removed
- Support for Ruby 1.9.3

## [0.0.3] - 2015-07-14
### Changed
- updated sensu-plugin gem to 1.2.0

## [0.0.2] - 2015-06-03
### Fixed
- added binstubs

### Changed
- removed cruft from /lib

## 0.0.1 - 2015-05-21
### Added
- initial release

[Unreleased]: https://github.com/sensu-plugins/sensu-plugins-xmpp/compare/1.0.1...HEAD
[1/0/1]: https://github.com/sensu-plugins/sensu-plugins-xmpp/compare/1.0.0...1.0.1
[1.0.0]: https://github.com/sensu-plugins/sensu-plugins-xmpp/compare/0.0.3...1.0.0
[0.0.3]: https://github.com/sensu-plugins/sensu-plugins-xmpp/compare/0.0.2...0.0.3
[0.0.2]: https://github.com/sensu-plugins/sensu-plugins-xmpp/compare/0.0.1...0.0.2
