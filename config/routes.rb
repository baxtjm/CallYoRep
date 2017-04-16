Rails.application.routes.draw do
  get 'thanks/thanks'

  get "/" => 'zip#home'

  post "/" => "representatives#get_response"

  get "/reps" => "representatives#get_response"
  post "/reps" => "twilio#phone_call"

  get "/thanks" => "thanks#thanks"



  post 'twilio/voice' => 'twilio#voice'

  post 'notifications/notify' => 'notifications#notify'

  post 'twilio/status' => 'twilio#status'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
