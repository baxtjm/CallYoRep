Rails.application.routes.draw do
  get "/" => 'zip#home'

  post "/" => "representatives#get_response"

  get "/rep" => "representatives#get_response"
  post "/rep" => "twilio#phone_call"


  # get "/rep_lookup" =>"representatives#get_response"


  post 'twilio/voice' => 'twilio#voice'

  post 'notifications/notify' => 'notifications#notify'

  post 'twilio/status' => 'twilio#status'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
