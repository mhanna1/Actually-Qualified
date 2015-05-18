class AccountActivationsController < ApplicationController
  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      log_in user
      flash[:success] = "<H2>Account activated!</H2>"
      redirect_to user
    else
      flash[:danger] = "<H2>Invalid activation link</H2>"
      redirect_to root_url
    end
  end
end
