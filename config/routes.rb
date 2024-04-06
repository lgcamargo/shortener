# Rails.application.routes.draw do
#   root 'home#welcome'
#   get 'sign_up', to: 'users#new', as: :sign_up
#   post 'sign_up', to: 'users#create'

#   get 'home/welcome'
#   get 'shortened/:original_link', to: 'shortener#send_to_original', as: 'original_link'
#   post 'shorten', to: 'shortener#create'
# end

Rails.application.routes.draw do
  root 'home#welcome'

  get 'sign_up', to: 'users#new', as: :sign_up
  post 'sign_up', to: 'users#create'

  get 'confirmations/confirm_email/:confirmation_token', to: 'confirmations#confirm_email'
  
  get 'shortened/:original_link', to: 'shortener#send_to_original', as: 'original_link'
  post 'shorten', to: 'shortener#create'
end