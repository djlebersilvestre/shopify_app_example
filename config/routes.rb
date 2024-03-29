Rails.application.routes.draw do
  root to: 'home#index'
  mount ShopifyApp::Engine, at: '/'

  resources :foos, except: %i(new edit), defaults: { format: :json } do
    resources :foo_dependants, shallow: true, except: %i(new edit)
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
