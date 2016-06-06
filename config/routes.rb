EngliApp::Application.routes.draw do
  get 'categories/new'

  get 'categories/index'

  get 'categories/show'

  get 'category/index'

  get 'static_pages/home'

  get 'users/new'

  devise_for :users
  get 'static_pages/welcome', to: 'static_pages#welcome', as: 'welcome'
  get 'static_pages/index'

  resources :users
  resources :phrases
  resources :categories


  root 'static_pages#welcome'
  get '/', to: 'static_pages#index', as: 'user_root'
  match '/actions',      to: 'categories#actions',          via:'get'
  match '/time',         to: 'categories#time',             via:'get'
  match '/productivity', to: 'categories#productivity',     via:'get'
  match '/apologies',    to: 'categories#apologies',        via:'get'
  match '/common',       to: 'categories#common',           via: 'get'


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