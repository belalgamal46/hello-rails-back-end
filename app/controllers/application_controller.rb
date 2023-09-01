class ApplicationController < ActionController::API
  def handle_routing_error
    render json: { errorMessage: 'URL provided is not found please check your URL', status: 'failed' },
           status: :not_found
  end
end
