require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

# put your own credentials here
account_sid = 'AC6c6cc3bf0fa71451edb86c7764f07f5c'
auth_token = 'ce0874767990e1640ad63ae98a4c45e9'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

# alternatively, you can preconfigure the client like so
Twilio.configure do |config|
  config.account_sid = account_sid
  config.auth_token = auth_token
end

# and then you can create a new client without parameters
@client = Twilio::REST::Client.new

# make a new outgoing call
@call = @client.calls.create(
  from: '+18573133666',
  to: '+18004567890',
  url: 'http://example.com/call-handler'
)

# hangup a ringing call, but don't touch it if it's connected
@call.cancel

# if you have the call sid, you can fetch a call object via:
@call = @client.calls.get('CA386025c9bf5d6052a1d1ea42b4d16662')

# redirect an in-progress call
@call.redirect_to('http://example.com/call-redirect')

# hangup a call, no matter whether it is ringing or connected
@call.hangup


# build up a response
response = Twilio::TwiML::Response.new do |r|
  r.Say 'this is a test', voice: 'alice'
  r.Dial callerId: '+18573133666' do |d|
    d.Client 'jenny'
  end
end

# print the result
puts response.text
