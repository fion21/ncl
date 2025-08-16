Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  # Now includes standard GET /portfolios/:id → portfolios#show
  resources :portfolios

  # Your extra Angular action stays the same
  get 'angular-items', to: 'portfolios#angular'

  get 'portfolio/:id', to: 'portfolios#show', 
  as: :portfolio_show


  get 'about-me', to: 'pages#about'
  get 'contact',   to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end


