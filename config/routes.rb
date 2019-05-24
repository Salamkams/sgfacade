Rails.application.routes.draw do
  root to: 'pages#home'

  resources :projects

  # get "/team" => "pages#team"
  # get "/contact" => "pages#join_us"

  # # Read action routes
  # get "projects" => "projects#index"
  # get "projects/:id" => "projects#show"

  # # Create action routes
  # get "/projects/new" => "projects#new"
  # post "/projects" => "projects#create"

  # # Update action routes
  # get "/projects/:id/edit" => "projects#edit"
  # patch "/projects/:id" => "projects#update"

  # # Delete action routes
  # delete "/projects/:id" => "projects#destroy"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
