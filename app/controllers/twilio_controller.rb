class TwilioController < ApplicationController
  include Webhookable

  before_action :set_phone
  after_action :set_header

  skip_before_action :verify_authenticity_token


  def planned_parenthood_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls.create(
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f",
              :to => "#{@phone}", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def planned_parenthood_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls.create(
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "#{@phone}"
              :from => "+18573133666")
    puts call.to
  end

  def aca_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls.create(
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "#{@phone}", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def aca_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls.create(
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "#{@phone}", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def global_warming_exists
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls.create(
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "#{@phone}", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def global_warming_fake
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls.create(
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "#{@phone}", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def muslim_ban_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls.create(
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "#{@phone}", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def muslim_ban_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls.create(
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "#{@phone}",
              :from => "+18573133666")
    puts call.to
  end

  def tax_transparency_act_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls.create(
              :url => "https://handler.twilio.com/twiml/EH0705d3a7cd44deced1a97cdeec47b969",
              :to => "+15165786248",
              :from => "+18573133666")
    puts call.to
  end

  def tax_transparency_act_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls.create(
              :url => "https://handler.twilio.com/twiml/EH0625a72f056e8851f2463173bc0edf3c",
              :to => "+15165786248", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def internet_privacy_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls.create(
              :url => "https://handler.twilio.com/twiml/EHe47d63142cc2f9878334c789ed48aeab",
              :to => "+15165786248", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def internet_privacy_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls.create(
              :url => "https://handler.twilio.com/twiml/EH958d265aeb31a9cb13155d092a4e0e50",
              :to => "+15165786248", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end


private

def set_phone
  @rep = "919-548-4308"#params[:rep_choice]
end




 end
