Rails.application.routes.draw do

  get 'license' => 'license#index', as: :license

  get '/' => 'home#index', as: :home

  get 'users/login' => 'users#login', as: :login
  get 'users' => 'users#index', as: :user
  get 'users/edit' => 'users#edit', as: :user_edit
  put 'users' => 'users#update', as: :user_update
  post 'sessions/create' => 'sessions#create', as: :session_create

  get 'sessions/destroy' => 'sessions#destroy', as: :session_destroy

  resources :suggestions do
    resources :comments
  end

  put 'suggestions/:id/approve' => 'suggestions#approve', as: :suggestion_approve
  delete 'suggestions/:id/decline' => 'suggestions#decline', as: :suggestion_decline

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
