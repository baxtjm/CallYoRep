class TwilioController < ApplicationController
  include Webhookable

  before_action :set_phone
  after_action :set_header
  skip_before_action :verify_authenticity_token

  def phone_call
    Message.each do |stance|
      def stance

        # put your own credentials here - from twilio.com/user/account
        account_sid = ENV['TWILIO_ACCOUNT_SID']
        auth_token = ENV['TWILIO_AUTH_TOKEN']

        # set up a client to talk to the Twilio REST API
        @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


        @call = @client.account.calls.create(
                  :to => "#{@rep}",
                  :from => "+18573133666",
                  :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f")
        puts @call.to

      end
    end
  end


  def planned_parenthood_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


    @call = @client.account.calls.create(
              :to => "#{@rep}",
              :from => "+18573133666",
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f")
    puts @call.to
  end

  def planned_parenthood_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


    @call = @client.account.calls.create(
              :to => "#{@rep}",
              :from => "+18573133666",
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f") #replace with twiMl Bin

    puts @call.to
  end

  def aca_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


    @call = @client.account.calls.create(
              :to => "#{@rep}", #tie to representatives controller
              :from => "+18573133666",
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f")
    puts @call.to
  end

  def aca_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


    @call = @client.account.calls.create(
              :to => "#{@rep}",
              :from => "+18573133666",
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f")
    puts @call.to
  end

  def global_warming_exists
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


    @call = @client.account.calls.create(
              :to => "#{@rep}", #tie to representatives controller
              :from => "+18573133666",
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f")
    puts @call.to
  end

  def global_warming_fake
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


    @call = @client.account.calls.create(
              :to => "#{@rep}", #tie to representatives controller
              :from => "+18573133666",
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f")
    puts @call.to
  end

  def muslim_ban_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


    @call = @client.account.calls.create(
              :to => "#{@rep}", #tie to representatives controller
              :from => "+18573133666",
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f")
    puts @call.to
  end

  def muslim_ban_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


    @call = @client.account.calls.create(
              :to => "#{@rep}",
              :from => "+18573133666",
              :url => "https://handler.twilio.com/twiml/EH69ff54a798e003752b677cb0e3c5822f")
    puts @call.to
  end

  def tax_transparency_act_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


    @call = @client.account.calls.create(
              :to => "#{@rep}",
              :from => "+18573133666",
              :url => "https://handler.twilio.com/twiml/EH0705d3a7cd44deced1a97cdeec47b969")
    puts @call.to
  end

  def tax_transparency_act_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


    @call = @client.account.calls.create(
              :to => "#{@rep}", #tie to representatives controller
              :from => "+18573133666",
              :url => "https://handler.twilio.com/twiml/EH0625a72f056e8851f2463173bc0edf3c")
    puts @call.to
  end

  def internet_privacy_pro
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


    @call = @client.account.calls.create(
              :to => "#{@rep}",
              :from => "+18573133666",
              :url => "https://handler.twilio.com/twiml/EHe47d63142cc2f9878334c789ed48aeab")
    puts @call.to
  end

  def internet_privacy_anti
    # put your own credentials here - from twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')


    @call = @client.account.calls.create(
              :to => "#{@rep}", #tie to representatives controller
              :from => "+18573133666",
              :url => "https://handler.twilio.com/twiml/EH958d265aeb31a9cb13155d092a4e0e50")
    puts @call.to
  end




def set_phone
  @rep = "+15165786248" #params[:rep_choice]
end




 end
