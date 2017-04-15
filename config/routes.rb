Rails.application.routes.draw do
  root 'zip#home'
  post "/zip" => "/rep_lookup"

  post "/" => "representatives#get_response"



  # get "/rep_lookup" =>"representatives#get_response"

  post "/rep_lookup" => "twilio#phone_call"

  post 'twilio/voice' => 'twilio#voice'

  post 'notifications/notify' => 'notifications#notify'

  post 'twilio/status' => 'twilio#status'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
