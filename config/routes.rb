Voluntrme::Application.routes.draw do

  # get "/", :controller => "landing", :action => "index", :as => :landing
  
  resources :events

  resources :organizations

  resources :registrations
  
  resources :volunteers do
       member do
         get :following, :followers
       end
   end
  
   resources :relationships, only: [:create, :destroy]
   resources :sessions,      only: [:new, :create, :destroy]
  
  
  match '/auth/:provider/callback' => 'volunteers#create'
  
  get "log_in" => "sessions#new", :as => "log_in"
  post "log_in" => "sessions#create", :as => "create"

  root :to => "landings#index"

  
  get "log_out" => "sessions#destroy", :as => "log_out"    
  
end
