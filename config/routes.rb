Rails.application.routes.draw do
  get "tickets/index"
  get "home/index"
   root "tickets#index"
  # Train booking
  get 'trains/ticketdetails', to: 'trains#ticketdetails', as: 'ticketdetails'
  get 'trains/payment', to: 'trains#payment', as: 'payment'
  resources :trains

  # Admin / User pages for train details
  get 'traindetails/ticketbooking', to: 'traindetails#ticketbooking', as: 'ticketbooking'
  get 'traindetails/adminpage', to: 'traindetails#adminpage', as: 'adminpage'
  get 'traindetails/userticket', to: 'traindetails#userticket', as: 'userticket'
  get 'traindetails/bookingdetails', to: 'traindetails#bookingdetails', as: 'bookingdetails'
  resources :traindetails

  # User authentication
  get  '/users/new',    to: 'users#new',        as: 'new_user'
  post '/users',        to: 'users#create'
  get  'users/login',   to: 'users#login_form', as: 'login'
  post '/users/login',  to: 'users#login',      as: 'login_user'
  get  'users/home',    to: 'users#home',       as: 'home'
  get  'users/userbooking', to: 'users#userbooking', as: 'userbooking'

  root "home#index"

end
