class StaticPagesController < ApplicationController
  def home
  end

  def mission
  end

  def resume
    user = User.find_by(email: params[:email])
    if user && logged_in?
      render 'resume'
    else
      flash[:info] = "Please login to view the resume page"
      redirect_to login_url
    end
  end

  def about
  end

  def contact
  end
end
