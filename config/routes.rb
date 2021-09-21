Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :applications, only: [:index, :show, :new, :edit]
  end

  resources :applications
  resources :interviews
  root 'welcome#home'

  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  get '/about', to: 'welcome#about'
  delete '/session/', to: 'session#destroy'
  post '/job_offers', to: 'job_offer#create', as: 'job_offers'
  get '/auth/facebook/callback' => 'session#create'
end
