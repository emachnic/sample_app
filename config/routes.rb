ActionController::Routing::Routes.draw do |map|
  map.contact '/contact', :controller => 'pages', :action => 'contact'
  map.about   '/about',   :controller => 'pages', :action => 'about'
  map.help    '/help',    :controller => 'pages', :action => 'help'
  map.signup '/signup',   :controller => 'users', :action => 'new'
  map.signin  '/signin',  :controller => 'sessions', :action => 'new'
  map.signout '/signout', :controller => 'sessions', :action => 'destroy'
  map.resources :users
  map.resources :sessions, :only => [:new, :create, :destroy]
  map.resources :microposts, :only => [:create, :destroy]
  map.root :controller => 'pages', :action => 'home'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
