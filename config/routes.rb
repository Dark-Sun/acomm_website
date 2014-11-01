Rails.application.routes.draw do

  root to: 'pages#home'

  get '/for_vendors'        => 'pages#for_vendors',       as: 'for_vendors'
  get '/pricing'            => 'pages#pricing',           as: 'pricing'
  get '/contact_us'         => 'pages#contact_us',        as: 'contact_us'
  get '/existing_vendors'   => 'pages#existing_vendors',  as: 'existing_vendors'
  get '/learn'              => 'pages#learn',             as: 'learn'
  get '/advertise'          => 'pages#advertise',         as: 'advertise'
  get '/enroll'             => 'pages#enroll',            as: 'enroll'
  get '/existing_online'    => 'pages#existing_online',   as: 'existing_online'
  get '/service_providers'  => 'pages#service_providers', as: 'service_providers'
  get '/content_providers'  => 'pages#content_providers', as: 'content_providers'
  get '/begginers'          => 'pages#begginers',         as: 'beginners'
  get '/unsure'             => 'pages#unsure',            as: 'unsure'
  
  get '/under_construction' => 'pages#under_construction', as: 'under_construction'

  resources :adopters, only: [:create]
end
