Rails.application.routes.draw do

root 'businesses#index', as: :business

get '/biz/:id' => 'businesses#new', as: :business_new

get '/list' => 'businesses#search', as: :business_search

post '/biz/menu' => 'businesses#menu', as: :business_menu

post '/biz/comment' => 'businesses#comment', as: :business_comment

post '/biz/menu_like' => 'menus#vote', as: :menu_like

post '/biz/comment_like' => 'comments#vote', as: :comment_like

post '/login' => 'users#login', as: :login_user

post '/create' => 'users#create', as: :create_user

post '/comment' => 'users#comment', as: :comment_user

post '/reply' => 'users#reply', as: :reply_user

get '/logout' => 'users#logout', as: :logout_user

delete '/comment/delete' => 'comments#destroy', as: :comment_delete

end
