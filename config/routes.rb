Rails.application.routes.draw do
  get 'company/:id', to: "company#show"
  get '/scrape/:company', to: "company#scrape"
  get '/domain_info', to: "company#domain_info"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
