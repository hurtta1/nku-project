NkuProject::Application.routes.draw do

  resources :players, :teams, :officials, :churches, :schedules, :guidelines, :gallery
  root 'home#index'
  end
