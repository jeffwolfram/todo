class ItemsController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @item = Item.new
  end

  def create

    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)
    # @item.user = current_user

    if @item.save
      flash[:notice] = "Item was save correctly"
      redirect_to new_list_item_path(@list)
    else
      flash.now[:alert] = "There was a problem saving list item. Please try again."
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])

  end

  def update
    @item = Item.find(params[:id])
    @item.assign_attributes(item_params)

    if @item.save
      flash[:notice] = "Item was successfully updated!"
    else
      flash.now[:alert] = "Your item was not updated. Please try again."
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.delete
      flash[:notice] = "\"#{@item.body}\" was deleted successfully"
      redirect_to @item.list
    else
      flash[:alert] = "There was a problem deleting your item. Please try again"
      redirect_to @item.list
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def index

  end







  private

  def item_params
    params.require(:item).permit(:body)
  end
end
