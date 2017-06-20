Rails.application.routes.draw do
  root 'static_pages#home'
  # maps request for URL / static_pages / home to the home action in controller
  # get responds to get request
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
