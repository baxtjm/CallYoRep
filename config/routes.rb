Rails.application.routes.draw do
  get "/rep_lookup" =>"representatives#get_response"

  post "/rep_lookup" => "twilio#planned_parenthood_anti"

  post 'twilio/voice' => 'twilio#voice'

  post 'notifications/notify' => 'notifications#notify'

  post 'twilio/status' => 'twilio#status'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
