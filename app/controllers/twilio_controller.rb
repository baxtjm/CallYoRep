require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC6c6cc3bf0fa71451edb86c7764f07f5c'
auth_token = 'ce0874767990e1640ad63ae98a4c45e9'
@client = Twilio::REST::Client.new account_sid, auth_token

call = @client.account.calls
  .create(:url => "http://demo.twilio.com/docs/voice.xml",
          :to => "+19195484308",
          :from => "+18573133666")
puts call.to

get '/hello-monkey' do
  content_type "text/xml"
  Twilio::TwiML::Response.new do |r|
    r.Say 'Hello Monkey'
  end.text
end
