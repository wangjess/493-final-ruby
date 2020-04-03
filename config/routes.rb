Rails.application.routes.draw do
  get 'welcome/index'

  get "/ootd", to: "ootd_recommendation#recommend", as: "recommend"

  # todo! not really necessary right now
  # get "/account", to: "account#account", as "account"

  # maps requests to the root of the application to the welcome controller's index action
  root 'welcome#index'
end
