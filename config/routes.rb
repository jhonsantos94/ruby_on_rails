Rails.application.routes.draw do
  resources :items do
    member do
      get 'destroy_confirmation'
    end
  end
end