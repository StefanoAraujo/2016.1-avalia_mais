Rails.application.routes.draw do

 #get routes
  get 'users/new'
  get 'users/show'
  get 'users/edit'
  get 'users/destroy'
  get '/users/new' => 'users#new'
  get '/users/:id' => 'users#show', :as => 'user'

  get 'entry/enter'

  get '/company/new' => 'companies#new'
  get '/company/:id' => 'companies#show', :as => 'company'

  get '/entry/enter' => 'entry#enter'

  #root
  root 'welcome#index'

  #general
  post "/upload", controller: 'parsers', action: 'upload'
  post "/parsers", controller: 'parsers', action: 'index', :as => "index_parser"
  resources :parsers
 
  post '/company/new', controller: 'companies', action: 'create', :as => 'create_company'

  #users

  post '/users/new', controller: 'users', action: 'create', :as => 'create_user'
  post '/users/edit', controller: 'users', action: 'edit', :as => 'edit_user'
  patch '/users/update/', controller: 'users', action: 'update', :as => 'update_user'

  #entry
  post '/entry/enter', controller: 'entry', action: 'enter', :as => 'edit_entry'


  #evaluation

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
