class VariantsController < ApplicationController
  before_action :set_variant, only: [:destroy]

  def destroy
    @id = @variant.id
    begin
      @variant.destroy
    rescue ActiveRecord::RecordNotDestroyed
    end
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Variant was successfully destroyed.' }
      format.json { head :no_content }
      format.js {}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_variant
      @variant = Variant.find(params[:id])
    end
end
