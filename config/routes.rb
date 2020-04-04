Rails.application.routes.draw do
  get 'welcome/index'

  get "/ootd", to: "ootd_recommendation#recommend", as: "recommend"

  # get "/account", to: "account#signin", as: "signin"

  # get "/login", to: "login#page", as: "page"
  # post "login" => "login#login", as: :login

  # todo! not really necessary right now
  get "/account", to: "account#info", as: "info"

  # maps requests to the root of the application to the welcome controller's index action
  root 'welcome#index'
end
