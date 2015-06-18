Rails.application.routes.draw do
 resources :apartments do
 	resources :rooms, shallow: true
 end
  root "apartments#index"
end
