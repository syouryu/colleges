Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "login" => "users#login_form"
  post "login" => "users#login"
  delete "logout" => "users#logout"

  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"

  get "graduate_schools/index" => "graduate_schools#index" 
  get "graduate_schools/:id/laboratories" => "graduate_schools#laboratories"
  get "graduate_schools/:id/laboratories/:id/show" => "laboratories#show", as: "graduate_schools_laboratory" 

  post "posts/" => "posts#create"

  # Defines the root path route ("/")
  # root "articles#index"
  get "home/top" => "home#top"

end
