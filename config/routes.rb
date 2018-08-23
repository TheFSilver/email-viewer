Rails.application.routes.draw do
  root 'emails#index'
  get 'emails/contenu', to: 'emails#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :emails, only: [:show, :destroy]

end
