Smartdrum::Application.routes.draw do
  get "record_comments/create"

  get "record_comments/destroy"

  get "record_comments/new"

  get "prod_comments/create"

  get "prod_comments/destroy"

  get "prod_comments/new"

  get "news_comments/create"

  get "news_comments/destroy"

  get "news_comments/new"

  get "profiles/show"

  get "profiles/new"

  get "profiles/delete"

  get "profiles/edit"

  get "profiles/update"

  get "profiles/create"

  get "profile/show"

  get "profile/new"

  get "profile/delete"

  get "profile/edit"

  get "profile/update"

  get "profile/create"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get "pages/home"

  get "pages/partners"

  get "pages/contacts"

  get "pages/employers"

  get "pages/about"

  get 'tags/:tag', to: 'records#index', as: :tag

  # The priority is based upon order of creation:
  # first created -> highest priority.
  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
  match 'about' => 'pages#about'
  match 'employers' => 'pages#employers'
  match 'contacts' => 'pages#contacts'
  match 'partners' => 'pages#partners'
  match 'home' => 'pages#home'

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  resources :products, :only => [:index, :show]
  resources :news, :only => [:index, :show]
  resources :records, :only => [:index, :show]
  resources :profiles, :only => [:show, :edit, :new, :create, :update]
  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, :controllers => { :registrations => "registrations" }
end
