Rails.application.routes.draw do

  get "users/newuser"
  get "users/index"
  get "users/modify/:id" => "users#modify"
  get "users/remove/:id" => "users#remove"
  
  post "users/create"
  patch "users/update/:id" => "users#update" 
  #put "users/destoring/:id" => "users#destory"
  
  resources :items  

  get "home/welcome"
  get "home/login"
  post "home/login"=> "authentication#create"
  get 'home/setting'
 
  
  get    "autentication/login"   => "authentication#new"
  post   "authentication/login"   => "authentication#create"
  get "authentication/signout" => "authentication#signout"
  #delete 'logout'  => 'authetication#destroy'

  
 
  #get "signed_out" => "authentication#signed_out"
  #get "change_password" => "authentication#change_password"
  #get "forgot_password" => "authentication#forgot_password"
  #get "new_user" => "authentication#new_user"
  #get "password_sent" => "authentication#password_sent"
  
  root :to => 'home#welcome'
  
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
