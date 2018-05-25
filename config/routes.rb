Rails.application.routes.draw do
  resources :contacts ,only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get 'about', to: 'pages#about'
  get 'contact_us', to: 'contacts#new', as: 'contact_us'
end
