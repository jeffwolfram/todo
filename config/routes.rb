Rails.application.routes.draw do

resources :lists do
  resources :items, except: [:index]
end
namespace :api, defaults: { format: :json } do
  resources :users do
    resources :lists
  end
  resources :lists, only: [] do
    resources :items, only: [:create, :update]
  end
  resources :items, only: [:destroy, :update]
end
 resources :users, only: [:new, :create, :show, :index]
 resources :sessions, only: [:new, :create, :destroy]
 root 'welcome#index'

end
