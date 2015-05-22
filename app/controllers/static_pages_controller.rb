class StaticPagesController < ApplicationController
  def home
  end

  def mission
  end

  def resume
    unless logged_in?
      flash[:info] = "Please login to view the resume page"
      redirect_to login_url
    end
  end

  def about
  end

  def contact
  end


end
