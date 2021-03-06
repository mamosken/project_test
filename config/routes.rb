Rails.application.routes.draw do
  

	devise_for :users
	resources :apartments do
 		resources :rooms, shallow: true
 	end
  get 'home/index'
  root "apartments#index"
  get 'apartments', to: 'apartments#search'
  get 'find/:neighborhood', to: 'apartments#find', as: 'find'
end
