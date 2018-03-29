Rails.application.routes.draw do
  get 'packages/index'

  get 'packages/webhook'

  get 'home/index'
  root 'packages#index'

  resources :packages do
    collection do
      post 'webhook'
      put 'webhook'
    end
  end
end
