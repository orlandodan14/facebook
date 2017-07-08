Rails.application.routes.draw do

  root 'static_pages#home'
  
  devise_for :users
  resources  :users,    only: [:index, :show]
  resources  :profiles, only: [:new, :create, :edit, :update]
end
