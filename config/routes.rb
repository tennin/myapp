PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

resources :posts, except: [:destroy] do
  resources :comments, only: [:create]
end

resources :categories, only: [:create, :new]


 #get 'posts', to: 'posts#index'

 #get '/posts/new', to: 'posts#new'
 #post '/posts', to: 'posts#create'
 #get '/posts/:id', to: 'posts#show'
 #get '/posts/:id/edit', to: 'posts#edit'
 #put '/posts/:id', to: 'posts#update'
 #patch '/posts/:id', to: 'posts#update'
 #delete '/posts/:id', to: 'posts#destroy'
end
