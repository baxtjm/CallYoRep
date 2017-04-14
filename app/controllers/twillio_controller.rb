require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_action :set_header

  skip_before_action :verify_authenticity_token


  def planned_parenthood_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls
      .create(:url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiML Bin
              :to => "+15165786248", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def planned_parenthood_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = .ENV['TWILIO_ACCOUNT_SID']
    auth_token = .ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls
      .create(:url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "+15165786248", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def aca_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = .ENV['TWILIO_ACCOUNT_SID']
    auth_token = .ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls
      .create(:url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "+15165786248", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def aca_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = .ENV['TWILIO_ACCOUNT_SID']
    auth_token = .ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls
      .create(:url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "+15165786248", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def global_warming_exists
    # put your own credentials here - from twilio.com/user/account
    account_sid = .ENV['TWILIO_ACCOUNT_SID']
    auth_token = .ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls
      .create(:url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "+15165786248", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def global_warming_fake
    # put your own credentials here - from twilio.com/user/account
    account_sid = .ENV['TWILIO_ACCOUNT_SID']
    auth_token = .ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls
      .create(:url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "+15165786248", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def muslim_ban_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = .ENV['TWILIO_ACCOUNT_SID']
    auth_token = .ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls
      .create(:url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "+15165786248", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  def muslim_ban_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = .ENV['TWILIO_ACCOUNT_SID']
    auth_token = .ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token


    @call = @client.account.calls
      .create(:url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f", #replace with twiMl Bin
              :to => "+15165786248", #tie to representatives controller
              :from => "+18573133666")
    puts call.to
  end

  


 end
