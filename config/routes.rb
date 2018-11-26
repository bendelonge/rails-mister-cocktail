Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:index, :show, :new, :create, :destroy]
  end
end
