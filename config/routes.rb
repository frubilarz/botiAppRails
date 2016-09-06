Rails.application.routes.draw do
  resources :medios_pago_locals
  resources :medios_pagos
  resources :horarios
  resources :comentarios
  resources :locals
  resources :tipo_patentes
  resources :glosa_patentes
  resources :comunas
  resources :provincia
  resources :regions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
