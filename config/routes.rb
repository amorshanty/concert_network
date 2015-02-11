Rails.application.routes.draw do

  get '/' => 'concerts#home'

  resources :concerts

end
