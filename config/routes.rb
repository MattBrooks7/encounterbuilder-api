Rails.application.routes.draw do
  
  namespace defaults: ( format: :json) do
    namespace :monsters do 
      get :index
      get :show
      post :create
      patch :update
      delete :destroy
    end
  end
end
