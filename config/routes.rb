Rails.application.routes.draw do
  devise_for :users
  root 'hospitals#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hospitals', to: 'hospitals#index', as: 'hospital_index'
  get 'hospitals/:hospital_id/doctors', to: 'doctors#index', as: 'doctor_index'
  get 'doctors', to: 'doctors#index', as: 'all_doctor_index'
  get 'bookings', to: 'bookings#index', as: 'booking_index'
  get 'bookings/doctor/:doctor_id', to: 'bookings#doctor', as: 'booking_doctor_index'
  get 'booking/new', to: 'bookings#new', as: 'booking_new'
  post 'booking/create', to: 'bookings#create', as: 'booking_create'
end
