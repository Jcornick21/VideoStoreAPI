Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :movies, only: [:index, :show, :create]
  resources :customers, only: [:index, :show] do
    resources :rental, only: [:create], as: 'checkout'
  end



end
