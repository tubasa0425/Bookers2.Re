Rails.application.routes.draw do
  
 devise_for :users
 
 root 'homes#top'
 
 resources :users, only: [:update, :create, :index, :show, :edit]
 
 resources :post_image_ids
 
 get 'home/about' => 'about#about'
 
 resources :books
 
 end


