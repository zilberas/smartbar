class Administration::VariantsController < Administration::BaseController
  
  def create
    @variant = Variant.new(params[:variant])
    if @variant.save
      flash[:notice] = "Successfully created new menu variant."
      #render :action => "show", :layout => nil
      @variants = Variant.find_all_by_menu_item_id(params[:variant][:menu_item_id])
      
      respond_to do |format|
        format.js {render :layout=>false}
      end
    else
      redirect_to administration_menu_items_path
    end
  end
  
end