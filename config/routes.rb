Rails.application.routes.draw do

  # root 'search#index'

  resources :rooms do
  	resources :photos do 
  	  get 'main'
  	end
  end

  root 'rooms#index'

  resources :room_steps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
