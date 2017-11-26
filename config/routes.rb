Rails.application.routes.draw do
  resources :movies
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/password',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'movies#index'
end
