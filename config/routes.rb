Rails.application.routes.draw do
  get 'company/:id', to: "company#show"
  get '/hello', to: "hello#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
