Rails.application.routes.draw do
  get 'doses/create'

  get 'doses/edit'

  get 'doses/update'

  get 'doses/destroy'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
  end

  resources :doses, only: [:edit, :update, :destroy]

  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
