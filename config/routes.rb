Stc::Application.routes.draw do
  devise_for :users

  resources :users

  resources :petitions

  resources :events do
    member do
      get :public_show
      get :public_apply
      get :apply
    end
  end

  post "/contacto/", to: "home#contacto"

  get '/evento/aspectos-contables-y-legales-al-formar-una-empresa', to: 'events#clase1', as: 'clase1'

  get '/auth/:provider/callback', to: 'sessions#auth_callback'

  root :to => "home#index"
end
