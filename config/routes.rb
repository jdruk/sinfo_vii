Rails.application.routes.draw do
  get 'list/index'

  get 'member/index'

  get 'minicurso/index'

  get 'confirmation/index'

  get 'lista', to: "list#index", as: 'geral'

  resources :administrators
  get 'checkout/:id', to: 'checkout#create', as: 'checkout'

  get 'n/:id' => 'notifications#create'


  get 'registres/painel' => 'registres#painel'

  get 'member', to: 'member#index', as: 'index'

  resources :panelists
  resources :courses
  resources :contacts
  devise_for :users, :controllers  => {
             :registrations => 'users/registrations',
             :sessions => 'users/sessions'
             # ...
           }
  resources :minhainscricaos
  resources :palestra_inscricaos
  resources :palestras
  root 'menu#index'

  get 'pay/:id/user' => "checkout#create"


  get 'confirma/:id', to: "confirmation#index", as: 'confirmation'

  get 'menu/index'
  #get 'painel/admin'

  get 'inscricoes/index'
  
  get 'contato/index'

  get 'parceiros/index'

  get 'programacao/index'

  get 'inscricoes/index'

  get 'artigos/index'
  
  get 'comite_cientifico/index'

  get 'comissao_organizadora/index'

  get 'apresentacao/index'

  #get 'menu#index'
  match ':controller(/:action(/:id))', :via => [:get, :post]

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
