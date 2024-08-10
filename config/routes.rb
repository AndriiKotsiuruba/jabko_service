# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'
  resource :switch_locale, only: :update
end
