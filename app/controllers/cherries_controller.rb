class CherriesController < ApplicationController
  def index
    @user = current_user
    # @farms = @user.farm
    @farms = Farm.where(user_id: @user.id)
    # @farm = Farm.find(params[:id])
    @cherry = Cherry.new
  end

  def new
    @cherry = Cherry.new
    @farm = Farm.find(params[:farm_id])
  end

  def create
    # cherry = Cherry.new(cherry_params)
    # cherry.save
    # farm = Farm.find(params[:farm_id])
    cherry = Cherry.new(cherry_params)
    # cherry.user_id = current_user.id
    # cherry = current_user.cherries.new(cherry_params)
    # cherry.farm_id = farm.id
    cherry.save
    redirect_to cherries_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

   def admin_new
    @cherry = Cherry.new
  end

  def admin_create
    cherry = Cherry.new(cherry_params)
    cherry.save
    redirect_to '/farms'
  end

  def admin_show
  end

  def admin_edit
  end

  def admin_update
  end

  def admin_destroy
  end



  private
  def cherry_params
    params.require(:cherry).permit(:cherry_name, :sour, :taste, :size, :cherry_image, :farm_id)
  end

end
