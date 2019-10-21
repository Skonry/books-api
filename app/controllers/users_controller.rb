class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:register]
  
  def register 
    user = User.create(user_params)
    command = AuthenticateUser.call(params[:email], params[:password])
    if command.success?
      json_response({ auth_token: command.result[:jwt], user: user.as_json(except: [:password_digest]) })
    else
      json_response({ error: command.errors }, :unauthorized)
    end
  end

  private

  def user_params
    params.permit(:login, :email, :password)
  end

end