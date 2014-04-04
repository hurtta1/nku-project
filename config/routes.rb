NkuProject::Application.routes.draw do
  get "home/index"
  resources :player, :team, :official, :church
  root 'home#index'
end
