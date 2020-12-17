Rails.application.routes.draw do
 # resources :monsters
  

  namespace :monsters do 
    get :index
    get :show
    post :create
    patch :update
    delete :destroy
  end

end
