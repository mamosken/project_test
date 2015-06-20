Rails.application.routes.draw do
  devise_for :users
	 resources :apartments do
 		resources :rooms, shallow: true
 end
  root "apartments#index"
  get 'apartments', to: 'apartments#search'
end
