Rails.application.routes.draw do
  devise_for :users
  #set the home page as documents and redirect if someone types /documents in the turl
  root "documents#index"
  resources :documents, only: [:show, :edit, :update]
  get '/documents' => redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
