Rails.application.routes.draw do

root 'businesses#index', as: :businesses

# get '/index' => 'restaurants#search', as: :restaurants_search ## HOW DO I GET SEARCH TO WORK?

get '/biz/:id' => 'businesses#new', as: :businesses_new

post '/biz/menu' => 'businesses#menu', as: :businesses_menu

post '/biz/comment' => 'businesses#comment', as: :businesses_comment

post '/login' => 'users#login', as: :login_user

post '/create' => 'users#create', as: :create_user

get '/logout' => 'users#logout', as: :logout_user

end
