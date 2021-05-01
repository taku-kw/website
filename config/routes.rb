Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/songlist',         to: 'songlist#index'
  get '/songlist/about',   to: 'songlist#about'
  get '/songlist/contact', to: 'songlist#contact'

  post   '/login',   to: 'session#create'
  get    '/signup',  to: 'session#new'
  delete '/logout',  to: 'session#delete'

  get '/mypage',     to: 'mypage#index'
 
end
