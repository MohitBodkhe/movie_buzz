Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'movies#index'
  get "/upcomming", to: "movies#upcomming"
  get "/popular", to: "movies#popular_movie"
  get "/bollywood/:id", to: "category#bollywood"
  get "/hollywood/:id", to: "category#hollywood"
  get "/action/:id", to: "category#action"
  get "/romance/:id", to: "category#romance"
  get "/comedy/:id", to: "category#comedy"
  get "/about" ,to: "movies#about"

  resources :movies do
    resources :reviews
  end 
  
end
