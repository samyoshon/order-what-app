Rails.application.routes.draw do

root 'businesses#index', as: :business

# get '/index' => 'restaurants#search', as: :restaurants_search ## HOW DO I GET SEARCH TO WORK?

get '/biz/:id' => 'businesses#new', as: :business_new

post '/biz/menu' => 'businesses#menu', as: :business_menu

post '/biz/comment' => 'businesses#comment', as: :business_comment

post '/biz/menu_like' => 'menus#vote', as: :menu_like

post '/biz/comment_like' => 'comments#vote', as: :comment_like

post '/login' => 'users#login', as: :login_user

post '/create' => 'users#create', as: :create_user

post '/comment' => 'users#comment', as: :comment_user

post '/reply' => 'users#reply', as: :reply_user

get '/logout' => 'users#logout', as: :logout_user

end
