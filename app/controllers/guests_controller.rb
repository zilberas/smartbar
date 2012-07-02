class GuestsController < ActionController::Base
  def index
    @guests = Guest.all
    
    respond_to do |format|
      #format.html # index.html.erb
      format.xml
    end
  end
  
end