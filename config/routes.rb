Rails.application.routes.draw do
<<<<<<< HEAD
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
=======
  get 'greetings/hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 3a7608e12a28da2fc23cadce5a400623a27216ce
end
