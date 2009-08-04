ActionController::Routing::Routes.draw do |map|
  map.resources :participants, :except => [:new, :create]
  map.resource :participant_session
#  map.signup '/signup', :controller => 'participants', :action => 'new'
  map.signin '/signin', :controller => 'participant_sessions', :action => 'new'
  map.signout '/signout', :controller => 'participant_sessions', :action => 'destroy', :conditions => { :method => :delete }

  map.root :controller => 'participants', :action => 'index'
end
