Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
  resources :users do
   resources :friendrequests, except: [:show, :edit, :update]
 end
 resources :posts do
   resources :hugs
   resources :comments
 end
 resources :friendrequests, only: [:show, :edit, :update]
 resources :friends
end
