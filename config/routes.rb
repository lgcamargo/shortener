Rails.application.routes.draw do
  get 'shortened/:original_link', to: 'shortener#send_to_original', as: 'original_link'
  post 'shorten', to: 'shortener#create'
end