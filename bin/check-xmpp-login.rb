#!/usr/bin/env ruby
#
# check-xmpp-login
#
# DESCRIPTION:
#   Attempt to login to a XMPP server with provided credentials.
#
# OUTPUT:
#   plain text
#
# PLATFORMS:
#   Linux
#
# DEPENDENCIES:
#   gem: sensu-plugin
#   gem: xmpp4r
#
# USAGE:
#   check-xmpp-login.rb -j jid -P pass
#
# NOTES:
#
# LICENSE:
#   Released under the same terms as Sensu (the MIT license); see LICENSE
#   for details.
#

require 'sensu-plugin/check/cli'
require 'xmpp4r/client'

class CheckXmppLogin < Sensu::Plugin::Check::CLI
  option :host,
         short: '-h HOST',
         long: '--host HOST',
         description: 'Host to login to',
         default: '127.0.0.1'

  option :port,
         short: '-p PORT',
         long: '--port PORT',
         description: 'Server port',
         default: 5222

  option :jid,
         short: '-j JID',
         long: '--jid JID',
         description: 'JID used to login',
         required: true

  option :password,
         short: '-P PASSWORD',
         long: '--password PASSWORD',
         description:  'Password used to login',
         required: true

  def run
    jid = Jabber::JID.new(config[:jid])
    cli = Jabber::Client.new(jid)
    cli.connect(config[:host], config[:port])
    cli.auth(config[:password])
    cli.close
    ok "Logged in as #{config[:jid]}"
  rescue Jabber::ClientAuthenticationFailure
    warning 'Login failed: Invalid jid or password'
  rescue Exception => err # rubocop:disable RescueException
    critical "Failed to connect to XMPP server: #{err.message}"
  end
end
