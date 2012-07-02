class Administration::MenuItemsController < Administration::BaseController
  
  def index
    @menu_items = MenuItem.all
  end
  
  def new
    @menu_item = MenuItem.new()
    @menu_item_types = MenuItemType.all.collect {|ts| [ts.name, ts.id]}
  end
  
  def edit
    @menu_item = MenuItem.find(params[:id])
    @menu_item_types = MenuItemType.all.collect {|ts| [ts.name, ts.id]}
    @menu_items = MenuItem.all
    @variant = Variant.new()
    @variants = Variant.find_all_by_menu_item_id(params[:id])
    respond_to do |format|
      format.html {render :edit}
    end
  end
  
  def create
    @menu_item = MenuItem.new(params[:menu_item])
    if @menu_item.save
      flash[:notice] = "Successfully created new menu item."
      redirect_to administration_menu_items_path
    else
      render :action => 'new'
    end
  end
  
  def update
    @menu_item = MenuItem.find(params[:id])
    if @menu_item.update_attributes(params[:menu_item])
      redirect_to administration_menu_items_path
    else
      render :action => :edit
    end
  end
end