Rails.application.routes.draw do
  get 'greeting-messages', to: 'greeting_messages#index'
  match '*unmatched', to: 'application#handle_routing_error', via: :all
end
