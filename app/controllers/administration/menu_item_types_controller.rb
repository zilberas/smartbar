class Administration::MenuItemTypesController < Administration::BaseController
  
  def index
    @menu_item_types = MenuItemType.all
  end
  
  def new
    @menu_item_type = MenuItemType.new()
  end
  
  def edit
    @menu_item_type = MenuItemType.find(params[:id])
    @menu_item_types = MenuItemType.all
  end
  
  def create
    @menu_item_type = MenuItemType.new(params[:menu_item_type])
    if @menu_item_type.save
      flash[:notice] = "Successfully created new menu type."
      redirect_to administration_menu_item_types_path
    else
      render :action => 'new'
    end
  end
  
  def update
    @menu_item_type = MenuItemType.find(params[:id])
    if @menu_item_type.update_attributes(params[:menu_item_type])
      redirect_to administration_menu_item_types_path
    else
      render :action => :edit
    end
  end
  
end