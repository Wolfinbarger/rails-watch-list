Rails.application.routes.draw do
  get 'welcomes/home'
  get 'movies/index'
  get 'movie/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcomes#home'
  resources :movies, only: %i[index] do
    collection do
      get :top
    end
  end

  resources :lists, only: %i[index new show create destroy] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
end
