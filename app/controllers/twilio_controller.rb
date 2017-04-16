class TwilioController < ApplicationController
  include Webhookable

  before_action :set_phone, :set_message
  after_action :set_header
  skip_before_action :verify_authenticity_token

def phone_call

            # put your own credentials here - from twilio.com/user/account
      account_sid = ENV['TWILIO_ACCOUNT_SID']
      auth_token = ENV['TWILIO_AUTH_TOKEN']
            # set up a client to talk to the Twilio REST API
      @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')
      @call = @client.account.calls.create(
            :to => "#{@rep}",
            :from => "+18573133666",
            :url => Message.find_by_position(@position).audio_link)
            puts @call.to
    redirect_to thanks_path
end


def set_phone
  @rep = "+17863940290" #params[:rep_choice]
end

def set_message
  @position= params[:stance]
end



 end
