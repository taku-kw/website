Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get  '/songlist',         to: 'songlist#index'
  post '/songlist',         to: 'songlist#index'
  get  '/songlist/about',   to: 'songlist#about'
  get  '/songlist/contact', to: 'songlist#contact'

  post   '/login',           to: 'session#create'
  get    '/guest_login',     to: 'session#create_guest'
  delete '/logout',          to: 'session#delete'
  get    '/signup',          to: 'session#new'
  post   '/signup_validate', to: 'session#new_validate'
  get    '/signup_validate', to: 'session#new'

  get '/mypage',     to: 'mypage#index'
 
end
