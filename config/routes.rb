Rails.application.routes.draw do
  resources :static_pages
  get 'pricing' => 'static_pages#pricing'
  resources :contacts
  get "content/silver"
  get "content/gold"
  get "content/platinum"
  mount Payola::Engine => '/payola', as: :payola
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  get 'products/:id', to: 'products#show', :as => :products
  devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_scope :user do
    put 'change_plan', :to => 'registrations#change_plan'
  end  
  resources :lists do
    resources :contacts
  end
  resources :users
  resources :listings
end
