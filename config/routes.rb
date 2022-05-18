# frozen_string_literal: true

Rails.application.routes.draw do
  resources :transporters, only: %i[show new create]
end
