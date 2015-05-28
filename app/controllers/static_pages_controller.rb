class StaticPagesController < ApplicationController
  def home
  end

  def mission
  end

  def simular
  end

  def languages
  end

  def fsd
  end

  def code
  end

  #  unless logged_in?
  #    flash[:info] = "Please login to view the code page"
  #    redirect_to login_url
  #  end
  # end


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

  def four_oh_four
  end


end
