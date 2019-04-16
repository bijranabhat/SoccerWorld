Rails.application.routes.draw do
 
  devise_for :users, :controllers => {:registrations => "registrations"}
  #root to: 'pages#index'
  
 devise_scope :user do
    get 'login', to:
    'devise/sessions#new'
  end
  devise_scope :user do
    get 'signup', to:
    'devise/registrations#new'
  end
  
  resources :messages do
    resources :comments
  end
  
  
  root 'messages#index'

end
 
 #git remote add origin youruser@yourserver.com:/path/to/my_project.git