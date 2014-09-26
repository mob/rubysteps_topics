Rails.application.routes.draw do
  root to: 'home#index'
  
  namespace 'api', :path => '', :constraints => {:subdomain => "api"} do
    resources :topics 
  end

end
