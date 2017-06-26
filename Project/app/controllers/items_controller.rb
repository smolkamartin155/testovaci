class ItemsController < ApplicationController
  before_action :set_item, only: [:destroy]

  def destroy
    @id = @item.id
    @item.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
      format.js {}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end
end
