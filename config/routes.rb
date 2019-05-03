Rails.application.routes.draw do
  resources :professors
  resources :alunos
  resources :enderecos
  resources :cidades
  resources :estados
  resources :pais
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
