Rails.application.routes.draw do

  get 'contact' => 'pages#contact'
  
  root 'pages#index'
end
