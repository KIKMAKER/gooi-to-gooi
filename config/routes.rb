Rails.application.routes.draw do
  get 'subscriptions/index'
  get 'subscriptions/show'
  get 'subscriptions/tuesday'
  get 'subscriptions/wednesday'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"

  get 'get_csv', to: 'collections#get_csv'
  post 'import_csv', to: 'collections#import_csv'

  resources :subscriptions do
    resources :collections, only: %i[new create]
    collection do
      get :tuesday
      get :wednesday
    end
  end

  resources :collections, only: %i[edit update]
end
