ActionController::Routing::Routes.draw do |map|
  # See how all your routes lay out with "rake routes"

  map.resources :themes

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
