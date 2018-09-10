Rails.application.routes.draw do
  namespace :api do
    resources :institutions, only: [:index]

  end

	get 'institution/list'
	get 'institution/new'
	post 'institution/create'
	patch 'institution/update'
	get 'institution/list'
	get 'institution/show'
	get 'institution/edit'
	get 'institution/delete'
	get 'institution/update'

end
