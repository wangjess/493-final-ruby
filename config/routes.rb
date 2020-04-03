Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # maps requests to the root of the application to the welcome controller's index action
  root 'welcome#index'
end
