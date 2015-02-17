## Sensu-Plugins-xmpp

[![Build Status](https://travis-ci.org/sensu-plugins/sensu-plugins-xmpp.svg?branch=master)](https://travis-ci.org/sensu-plugins/sensu-plugins-xmpp)
[![Gem Version](https://badge.fury.io/rb/sensu-plugins-xmpp.svg)](http://badge.fury.io/rb/sensu-plugins-xmpp)
[![Code Climate](https://codeclimate.com/github/sensu-plugins/sensu-plugins-xmpp/badges/gpa.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-xmpp)
[![Test Coverage](https://codeclimate.com/github/sensu-plugins/sensu-plugins-xmpp/badges/coverage.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-xmpp)
[![Dependency Status](https://gemnasium.com/sensu-plugins/sensu-plugins-xmpp.svg)](https://gemnasium.com/sensu-plugins/sensu-plugins-xmpp)

## Functionality

## Files
 * bin/handler-xmpp

## Usage
```
{
  "xmpp": {
    "jid": "user@domain",
    "password": "guest",
    "target": "room@conference.domain",
    "target_type": "conference",
    "server": "server.domain",
    "room_passord": "roompassword"
  }
}
```

## Installation

Add the public key (if you haven’t already) as a trusted certificate

```
gem cert --add <(curl -Ls https://raw.githubusercontent.com/sensu-plugins/sensu-plugins.github.io/master/certs/sensu-plugins.pem)
gem install sensu-plugins-xmpp -P MediumSecurity
```

You can also download the key from /certs/ within each repository.

#### Rubygems

`gem install sensu-plugins-xmpp`

#### Bundler

Add *sensu-plugins-disk-checks* to your Gemfile and run `bundle install` or `bundle update`

#### Chef

Using the Sensu **sensu_gem** LWRP
```
sensu_gem 'sensu-plugins-xmpp' do
  options('--prerelease')
  version '0.0.1'
end
```

Using the Chef **gem_package** resource
```
gem_package 'sensu-plugins-xmpp' do
  options('--prerelease')
  version '0.0.1'
end
```

## Notes
