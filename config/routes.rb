Rails.application.routes.draw do
  get 'catalog/index'

  devise_for :admins
  devise_for :users, controllers: {sessions: "users/sessions", registrations: "users/registrations" },
             path: "auth", path_names: { sign_in: 'login', sign_out: 'logout',
                                         password: 'secret', confirmation: 'verification',
                                         unlock: 'unblock', registration: 'register',
                                         sign_up: 'signup' }
  resources :users do
    resources :books do
      resources :chapters
    end
  end

  resources :books do
    resources :chapters
  end

  get 'home' => "catalog#index", as: :home
  get 'user/:user_id' => "users#show", as: :current_user
  get "user/:user_id/books/:book_id/add" => "books#add_chapter", as: :add_chapter
  get "user/:user_id/book/:book_id/chapter/:chapter_id/delete" => "books#delete_chapter", as: :delete_chapter
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'catalog#index'

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
