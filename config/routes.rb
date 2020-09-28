Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/home'
	get '/users/create', to: 'users#new'
	post 'users/create'

	root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
