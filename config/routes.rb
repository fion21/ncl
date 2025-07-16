Rails.application.routes.draw do
  # Full RESTful routes for portfolios (includes show, edit, update, destroy, etc.)
  resources :portfolios

  # Static pages
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # Blogs with member route
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  # Root path
  root to: 'pages#home'
end
