Rails.application.routes.draw do
  resources :static_pages
  get 'pricing' => 'static_pages#pricing'
  get 'search' => 'contacts#search'
  resources :contacts
  get "content/silver"
  get "content/gold"
  get "content/platinum"
  mount Payola::Engine => '/payola', as: :payola
  mount Upmin::Engine => '/admin'
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  # root to: "devise/sessions#new"
  get 'products/:id', to: 'products#show', :as => :products
  devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_scope :user do
    put 'change_plan', :to => 'registrations#change_plan'
  end
  resources :lists do
    resources :contacts, only: :index, controller: 'list_contacts'
  end

  resources :contacts, only: [], controller: 'list_contacts' do
    post 'add_to_list', on: :collection
  end
  resources :users
  resources :listings

  get 'pages/about' => 'high_voltage/pages#show', id: 'about'
  get 'pages/blog' => 'high_voltage/pages#show', id: 'blog'
  get 'pages/contact' => 'high_voltage/pages#show', id: 'contact'
  get 'pages/faqs' => 'high_voltage/pages#show', id: 'faqs'
  get 'pages/features' => 'high_voltage/pages#show', id: 'features'
  get 'pages/for-agencies' => 'high_voltage/pages#show', id: 'for-agencies'
  get 'pages/for-charities' => 'high_voltage/pages#show', id: 'for-charities'
  get 'pages/for-freelancers' => 'high_voltage/pages#show', id: 'for-freelanceers'
  get 'pages/for-startups' => 'high_voltage/pages#show', id: 'for-startups'
  get 'pages/help' => 'high_voltage/pages#show', id: 'help'
  get 'pages/privacy' => 'high_voltage/pages#show', id: 'privacy'
  get 'pages/terms' => 'high_voltage/pages#show', id: 'terms'
  get '/blog', to: 'blog#redirect'
end
