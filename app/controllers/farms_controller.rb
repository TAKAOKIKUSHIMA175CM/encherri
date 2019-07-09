class FarmsController < ApplicationController
  def index
  end

  def search
  end

  def show
  end

  def new
    @farm = Farm.new
  end

  def create
    farm = Farm.new(farm_params)
    farm.save
    render "new_farm_path"
  end

  def edit
    @farm = Farm.find(params[:id])
  end

  def update
    farm = Farm.find(prams[:id])
  end

  def destroy
  end

  def about
  end

  def admin_index
  end

  def admin_show
  end

  def admin_edit
  end

  def admin_update
  end

  def admin_destroy
  end

  def area_index
  end

  def area_search
  end

# ストロングパラメーター
# 以下の入力を許可
  private
  def farm_params
    params.require(:farm).parmit(:farm_name, :business_day, :map, :farm_image_id, :price, :area, :feature)
  end

  def search_params
    params.require(:farm).parmit(:farm_name)
  end

end
