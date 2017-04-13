Rails.application.routes.draw do
  get "/testrep" =>'representatives#rep_lookup'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
