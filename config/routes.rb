Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/songlist',   to: 'songlist#index'

  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#delete'

  get '/mypage',     to: 'mypage#index'
 
end
