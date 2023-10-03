Rails.application.routes.draw do
  root 'posts#index'

  resources :posts do
    member do
      put 'like' 
    end
  end

  get 'posts/new', to: 'posts#new', as: 'create_post'
  get 'posts/:id/edit', to: 'posts#edit', as: 'amend_post'
  patch 'posts/:id', to: 'posts#update'

end
