class ShelvesController < ApplicationController

  def index
    shelves = @current_user.shelves
    json_response({shelves: shelves})
  end

  def create
    shelf = Shelf.create(shelf_params)
    @current_user.shelves << shelf
    json_response({shelf: shelf})
  end

  def show
    shelf = Shelf.find(params[:shelf_id])
    json_response({shelf: shelf})
  end

  def update
    shelf = Shelf.find(params[:shelf_id])
    shelf.update!(shelf_params)
    json_response({shelf: shelf})
  end

  def destroy
    shelf = Shelf.find(params[:shelf_id])
    shelf.destroy
    json_response({result: 'book deleted'})
  end

  private

  def shelf_params
    params.require(:shelf).permit(:name)
  end
  
end
