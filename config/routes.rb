Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boards do
    resources :bookings, only: [:new, :create] #destroy?
  end
  get "/dashboard", to: "dashboards#show"

  patch "/validate/:id", to: "bookings#validate" , as: :validated
  patch "/decline/:id", to: "bookings#decline" , as: :declined
    
  
end
