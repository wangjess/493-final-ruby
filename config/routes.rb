Rails.application.routes.draw do
  get 'welcome/index'

  get "/ootd", to: "ootd_recommendation#recommend", as: "recommend"

  # maps requests to the root of the application to the welcome controller's index action
  root 'welcome#index'
end
