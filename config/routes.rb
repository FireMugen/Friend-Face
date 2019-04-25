Rails.application.routes.draw do
	root :to => 'users#index'
	 resources :users, :only => [:new, :create, :index, :show, :edit, :update, :destroy]
	 resources :posts, :only => [:show, :create, :index, :destroy]
	 resources :comments, :only => [:create, :show, :destroy]
	                                      # This path is where unauthorized users will be redirected_to.
	get '/login' => 'session#new'         # This will be our sign-in page.
	post '/login' => 'session#create'     # This will be the path to which the sign-in form is posted
	delete '/login' => 'session#destroy'  # This will be the path users use to log-out.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
