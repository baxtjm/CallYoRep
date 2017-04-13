class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def notify
    client = Twilio::REST::Client.new ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]
    message = client.messages.create from: '+18573133666', to: '+15165786248', body: 'Learning to send SMS you are.', media_url: 'http://linode.rabasa.com/yoda.gif', status_callback: request.base_url + '/twilio/status'
    render plain: message.status
  end

end
