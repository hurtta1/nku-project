NkuProject::Application.routes.draw do
  get "home/index"
  get "officials/index" => 'officials#index'
  get "teams/index" => 'teams#index'
  get "players/index" => 'players#index'
  resources :player, :team, :official, :church
  root 'home#index'
  end
