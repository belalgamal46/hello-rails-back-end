class GreetingMessagesController < ApplicationController
  def index
    @greeting_message = GreetingMessage.order('RANDOM()').limit(1).first

    if @greeting_message
      render json: { message: @greeting_message, status: 'success' }, status: :ok
    else
      render json: { message: 'Could not find any greeting messages', status: 'failed' }, status: :bad_request
    end
  end
end
