Rails.application.routes.draw do
  #get 'admin/index'
  #get 'sessions/new'
  get "sessions/create"
  get "sessions/destroy"
  resources :users

  get 'admin' =>'adminindex'
  controller :sessions do
  	get 'login' => :new
  	post 'login' => :create
  	delete 'logout' => :destroy
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'admin#index'
end
