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

  get '/contacts/all/34kjnxnh2c894545yct4582ct259c8ytc', to: 'home#index_contactos'

  post "/contacto/", to: "home#contacto"

  get '/evento/aspectos-contables-y-legales-al-formar-una-empresa', to: 'events#clase1', as: 'clase1'

  get '/auth/:provider/callback', to: 'sessions#auth_callback'

  scope "/clases-presenciales" do
    get "13-de-marzo", to: "clases_presenciales#marzo13"
    get "27-de-marzo", to: "clases_presenciales#marzo27"
  end

  root :to => "home#index"
end
