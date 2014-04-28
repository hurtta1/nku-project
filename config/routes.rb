NkuProject::Application.routes.draw do

  get "signup" => "plyerss#new", :as => "signup"
  resources :players, :teams, :officials, :churches, :schedules, :guidelines, :gallery
  root 'home#index'
  end
