Rails.application.routes.draw do
  get 'greeting-messages', to: 'greeting_messages#index'
end
