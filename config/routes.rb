Rails.application.routes.draw do

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  root 'posts#index'

  devise_for :users

  resources :users, only: [:index, :show] do
    resources :friendships, only: [:create, :update, :destroy]
  end
  
  resources :posts, only: [:index, :create] do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
  end
  
  get '/api/posts', to: 'api#show_posts'
  get '/api/posts/:post_id/comments', to: 'api#show_comments'
  post '/api/posts/comment', to: 'api#add_comment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
