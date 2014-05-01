NkuProject::Application.routes.draw do

  get "signup" => "plyerss#new", :as => "signup"
  get "signin" => "sessionss#new", :as => "signin"
  resources :players, :teams, :officials, :churches, :schedules, :guidelines, :gallery, :posts, :sessions
  root 'home#index'
  end
