Rails.application.routes.draw do
  get 'bookmarks/new'
  resources :lists do
    resources :bookmarks, only:[:create]
    resources :reviews, only:[:create]
  end
  resources :bookmarks, only:[:destroy]
end
