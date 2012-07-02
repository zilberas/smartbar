class OrdersController < ActionController::Base
  layout 'application'
  def index
    @new_orders = []
    if params[:after]
      @new_orders = Order.where("completed = ? and created_at > ?", false, Time.at(params[:after].to_i + 1)).order("id DESC")
    else
      @orders = Order.where('completed = ?', false).order('id DESC')      
    end

    respond_to do |format|
      #format.html # index.html.erb
      format.html
      format.js {render :layout => false}
    end
  end
  
  def create
    @order = Order.new()
    @order.update_attributes(:table_id => params[:table_id], :username=>params[:username], :phone=>params[:phone])
    
    @menu_items_ids = @order.parse_items(params[:item_list])
    @menu_items_ids.each do |id|
      @order.menu_items << MenuItem.find_by_id(id)
    end
    
    @all_menu_items = MenuItem.all
    @success = 1
    
      respond_to do |format|
        format.html { redirect_to orders_url }
        format.json {render :layout => false, :json => {:order => @order, :all_menu_items => @all_menu_items, :success => @success}}
      end
      
  end
  
  def complete
    @order = Order.find_by_id(params[:id])
    if @order.update_attributes(:completed => true)
      @orders = Order.where('completed = ?', false).order('id DESC')
      respond_to do |format|
        #format.html { redirect_to orders_url }
        format.js {render :layout => false}
      end
    end
  end
  
  #visi ivykdyti
  def completed
    @orders = Order.where('completed = ?', true).order('id DESC').paginate(:page => params[:page], :per_page => 2)
  end
  
end