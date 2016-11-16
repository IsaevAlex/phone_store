Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'home#index'
  resources :phones do
  	 collection do
  	 	get :recent
  	 	get :price_ascending
  	 end	
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
