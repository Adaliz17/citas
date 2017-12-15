Rails.application.routes.draw do
  resources :cita_medicas
  resources :doctors
  resources :personas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
