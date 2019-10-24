# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search/index'
  get 'search/results'
  get 'search/violator_results'
  get 'about/index'
  get 'violators/index'
  get 'violators/show'
  get 'tickets/index'
  get 'tickets/show'

  resources :tickets do
    resources :violators
  end

  resources :violators do
    resources :tickets
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
