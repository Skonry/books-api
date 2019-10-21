class ApplicationController < ActionController::API
  before_action :authenticate_request

  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    json_response({error: 'not authorized'}, status: 401) unless @current_user
  end

  def json_response(data, status = :ok)
    render json: data, status: status
  end
  
end