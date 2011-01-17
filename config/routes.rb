LoginApp::Application.routes.draw do

  resources :boards do
    resources :conversations
  end

  root :to => "boards#index"

  resources :users, :user_sessions
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
end
