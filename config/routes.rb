Rails.application.routes.draw do
  resources :atividades
  resources :alunos
  resources :disciplinas
  resources :turmas
  devise_for :users
  root "home_page#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
