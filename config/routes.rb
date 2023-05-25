Rails.application.routes.draw do
  get 'bookmarks/new'
  root to: "pages#home_page"
  resources :lists do
    resources :bookmarks, only:[:create]
    resources :reviews, only:[:create]
  end
  resources :bookmarks, only:[:destroy]
end
