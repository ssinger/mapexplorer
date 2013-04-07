class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter LogFilter
  def view
    @title = 'MapExplorer - Exploring Communities Through Maps'
    render
  end
  def about
      @title = 'MapExplorer - Exploring Communities Through Maps'
  end
  def penlakemap
    render
  end
end
