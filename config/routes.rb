Rails.application.routes.draw do

resources :lists do
  resources :items, except: [:index]
end
namespace :api, defaults: { format: :json } do
  resources :users
end
 resources :users, only: [:new, :create, :show, :index]
 resources :sessions, only: [:new, :create, :destroy]
 root 'welcome#index'

end
