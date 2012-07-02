class MenuItemsController < ApplicationController
  layout 'application'
  
  def index
    @menu_items = MenuItem.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml{ render :layout => false}
    end
  end
  
end