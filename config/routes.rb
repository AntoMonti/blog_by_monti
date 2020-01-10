Rails.application.routes.draw do
  get 'welcome/index'
  get 'home' => 'pages#home'
  get 'about' => 'pages#about'

  resources :articles do
    resources :comments
  end

  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  
  root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
