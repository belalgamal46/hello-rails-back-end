class GreetingMessagesController < ApplicationController
  def index
    @greeting_message = GreetingMessage.order('RANDOM()').limit(1).first

    if @greeting_message
      render json: @greeting_message, status: :ok
    else
      render json: { errorMessage: 'Could not find any greeting messages', status: 'failed' }, status: :bad_request
    end
  end
end
