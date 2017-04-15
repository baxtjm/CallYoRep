

Rails.application.routes.draw do
  root 'representatives#home'

  module TwilioRedirect
  extend self
    def matches?(request)
      @position = request.request_parameters[:position]
    end
  end

  get "/rep_lookup" =>"representatives#get_response"
  match "/rep_lookup", :via=>:post, :controller=>"twilio", :action=>@position,  :constraints => TwilioRedirect

  # post "/rep_lookup" => "twilio#phone_call", as :post_rep

  post 'twilio/voice' => 'twilio#voice'

  post 'notifications/notify' => 'notifications#notify'

  post 'twilio/status' => 'twilio#status'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
