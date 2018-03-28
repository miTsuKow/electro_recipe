class AccessoriesController < ApplicationController
  before_action :set_accessory, only: [:show, :edit, :update, :destroy]

  def index
    @accessories = Accessory.default_order
  end

  def show;  end

  def edit;  end


  def new
    @accessory = Accessory.new
  end

  def  create
    @accessory = Accessory.new(accessory_params)
  end

  def update
    respond_to do |format|
      if @accessory.update(accessory_params)
        format.html { redirect_to @accessory, notice: 'accessory was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @accessory.destroy
    respond_to do |format|
      format.html { redirect_to accessorys_url, notice: 'accessory was successfully destroyed.' }
    end
  end



  private

  def set_accessory
    @accessory = Accessory.find(params[:id])
  end

  def accessory_params
    params.require(:accessory).permit(:name, :age)
  end


end
