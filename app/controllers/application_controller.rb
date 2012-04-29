class ApplicationController < ActionController::Base
  protect_from_forgery
  def view
    render
  end
  def about
  end
  def penlakemap
    render
  end
end
