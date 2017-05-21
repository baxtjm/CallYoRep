class TwilioController < ApplicationController
  include Webhookable

  before_action :set_phone, :set_message, :set_zip, :set_email, :set_rep
  after_action :set_header
  skip_before_action :verify_authenticity_token

def phone_call

            # put your own credentials here - from twilio.com/user/account
      account_sid = ENV['TWILIO_ACCOUNT_SID']
      auth_token = ENV['TWILIO_AUTH_TOKEN']
            # set up a client to talk to the Twilio REST API
      @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')
      @call = @client.account.calls.create(
            :to => "#{@phone}",
            :from => "+18573133666",
            :url => Message.find_by_position(@position).audio_link)
            puts @call.to

    user = User.create(zip: @zip, email: @email, message_id: Message.find_by_position(@position).id.to_i, rep: @rep)
    redirect_to thanks_path
end



private

  def set_phone
    @phone = params[:rep_choice]
  end

  def set_message
    @position= params[:stance]
  end
  def set_zip
    @zip= params[:zip]
  end
  def set_email
    @email= params[:email]
  end

  def set_rep
    @response = HTTParty.get("http://congress.api.sunlightfoundation.com/legislators/locate?zip=#{@zip}&output=json", format: :plain)
    # @response = HTTParty.get("http://whoismyrepresentative.com/getall_mems.php?zip=#{params[:zip]}&output=json", format: :plain)
    @reps = (JSON.parse @response, symbolize_names: true)[:results].uniq

    @reps.each do |rep|
         if rep[:phone] == params[:rep_choice]
           @rep = rep[:name]
         elsif params[:rep_choice] == "202-456-1111"
           @rep = "Donald Trump"
         end
       end
  end




 end
