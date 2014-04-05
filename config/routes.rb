NkuProject::Application.routes.draw do
  get "home/index"
  get "officials/index" => 'officials#index'
  get "teams/index" => 'teams#index'
  get "players/index" => 'players#index'
  get "schedule/index" => 'schedule#index'
  get "guidelines/index" => 'guidelines#index'
  get "gallery/index" => 'gallery#index'
  get "signup/index" => 'signup#index'
  resources :player, :team, :official, :church
  root 'home#index'
  end
