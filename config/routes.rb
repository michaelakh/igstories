Rails.application.routes.draw do
  root 'pages#welcome'
  
  #Pages
  get 'welcome', to:'pages#welcome'
  
  #Users
  get 'search', to:'users#search'
  get 'stories/:user', to:'users#stories'
  get 'highlights/:user_id', to:'users#highlights'
  
  #Docs
  get 'privacy_policy', to:'docs#privacy_policy'
  get 'cookies_policy', to:'docs#cookies_policy'
  get 'disclaimer', to:'docs#disclaimer'
  
  #Messages 
  get 'contact', to:'messages#welcome'
   
end
