Rails.application.routes.draw do

  resources :logins
	root 'pizzacluster#index'

	get 'menu' => 'menu#show'

 	get 'order' => 'order#show'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
