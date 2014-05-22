RailsBlog::Application.routes.draw do

  root 'posts#index'

  resources :users
  resources :tags
  
  resources :posts do 
    resources :comments, :only => [:new, :create, :edit, :destroy]
  end

end
