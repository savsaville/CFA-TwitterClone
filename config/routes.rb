Rails.application.routes.draw do

  resources :comments
  resources :posts do
    member do
      get 'toggle_like', to: 'posts#toggle_like'
    end
    member do
      get 'toggle_follow', to: 'posts#toggle_follow'
    end
  end



  devise_for :users


  root to: 'pages#home'



  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
