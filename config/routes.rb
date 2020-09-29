Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/home'
	get '/users/create', to: 'users#new'
	post '/users/create'
	get '/users/:id/edit', to: 'users#edit', as: 'edit_users'
	patch '/users/:id', to: 'users#update'
	delete '/users/:id', to: 'users#destroy', as: 'destroy_users'

	root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
