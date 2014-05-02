NkuProject::Application.routes.draw do

  get "signup" => "plyerss#new", :as => "signup"
  get "signin" => "sessionss#new", :as => "signin"
  get "signout", to: "sessions#destroy"
  get "stats", to: "teams#edit"
  #get "posts_path" => "posts#index"
  #get "/posts" => redirect("/index")
  resources :players, :teams, :officials, :churches, :events, :guidelines, :gallery, :sessions, :posts
  root 'home#index'
  end
