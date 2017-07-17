Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'register' => "user#new"
  post 'register' => "user#create"
  get 'login' => "session#new"
  post 'login' => "session#startsession"
  get 'logout' => "session#endsession"
  root  :controller => 'main', :action => 'show'

end
