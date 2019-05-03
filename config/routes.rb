Rails.application.routes.draw do
  resources :trabalhos
  resources :provas
  resources :disciplinas
  resources :cursos
  resources :semestres
  resources :anos
  resources :professors
  resources :alunos
  resources :enderecos
  resources :cidades
  resources :estados
  resources :pais
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
