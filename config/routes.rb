Rails.application.routes.draw do
  devise_for :users
  resources :line_items, except: [:index]
  resources :carts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'phones#index'
  resources :phones do
  	 collection do
  	 	 get :recent
  	 	 get :price_ascending
  	 end	
     member do
        put "like" => "phones#upvote" 
        put "dislike" => "phones#downvote" 
     end
  end
  resources :searches

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
