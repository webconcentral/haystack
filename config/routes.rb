Rails.application.routes.draw do

  post '/contact' => 'pages#contact', as: "contact_us"
  
  root 'pages#index'
end
