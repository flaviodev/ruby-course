Rails.application.routes.draw do

  root 'restaurant#index'
  
  #Default route
  get ':controller(/:action(/:id))'
  
end
