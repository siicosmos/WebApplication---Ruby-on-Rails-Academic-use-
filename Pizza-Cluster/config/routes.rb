Rails.application.routes.draw do

	match ':controller/:action/:id', via: :get
	
	root 'pizzacluster#index'

	get 'pizzacluster' => 'pizzacluster#index'

	get 'menu' => 'menu#show'

 	get 'order' => 'order#show'

 	get 'info' => 'info#show'

 	post '/login'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
