Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boards do
    resources :bookings, only: [:new, :create] #destroy?
  end
  get "/dashboard", to: "dashboard#show"
  resources :bookings do
    member do
      patch "/validate", to: "bookings#validate"
      patch "/decline", to: "bookings#decline"
    end
  end
end
