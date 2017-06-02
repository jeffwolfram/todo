Rails.application.routes.draw do

resources :lists do
  resources :items, except: [:index]
end
 resources :users, only: [:new, :create, :show, :index]
 resources :sessions, only: [:new, :create, :destroy]
 root 'welcome#index'

end
