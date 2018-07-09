Rails.application.routes.draw do
  resources :teammakings
  resources :bulk_attendances
  resources :attendances
  resources :users
  resources :corrections
  resources :all_hands
  resources :members
  resources :teams
  devise_for :logins, controllers: { omniauth_callbacks: "logins/omniauth_callbacks" }
  devise_scope :login do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_login_session_path
  end
  root "pages#show", page: "home"
  get "/pages/:page" => "pages#show"
  get '/users/:id/door' => "users#door"
  # get '/users/:id/door' => 'users#door', as: 'door'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
