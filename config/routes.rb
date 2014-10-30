Rails.application.routes.draw do

  root to: 'pages#home'

  get '/for_vendors'      => 'pages#for_vendors',      as: 'for_vendors'
  get '/pricing'          => 'pages#pricing',          as: 'pricing'
  get '/contact_us'       => 'pages#contact_us',       as: 'contact_us'
  get '/existing_vendors' => 'pages#existing_vendors', as: 'existing_vendors'

  get '/under_construction' => 'pages#under_construction', as: 'under_construction'
end
