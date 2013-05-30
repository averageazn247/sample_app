class SessionsController < ApplicationController
  require 'omniauth'
  
  def new
  end
  def login
    @ayth= request.env["omniauth.ath"]
    @token=@auth["credentials"]["token"]
    client =Google::APIClient.new
    client.authorization.access_token=@token
    service = client.discovered_api('calendar','v3')
    @result =client.execute(
    :api_method => service.calendar_list.list,
    :parameters => {},
    :headers => {'content-Type'=> 'application/json'})
  end 
  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

def destroy
    sign_out
    redirect_to root_url
  end
end
