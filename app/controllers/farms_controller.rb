class FarmsController < ApplicationController
  def index
    @farms = Farm.all
    @user = User.find_by(id: params[:id])
    #親のfarmから子のCherryを紐づけている
    @farm = Farm.where(use_id: @user_id)
    # @cherries = Cherry.where(farm_id: @farm_id)
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
    #ファームモデルのuser_idがデフォルトでは入らないのでidが入るように指定してあげる
    farm.user_id = current_user.id
    farm.save
    redirect_to cherries_path
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

  def my_farm
    # 1.farmをuser_idでfind_byして持ってくる
    # 2.indexにrenderさせる
  end

# ストロングパラメーター
# 以下の入力を許可
  private
  def farm_params
    params.require(:farm).permit(:farm_name, :business_day, :map_image, :farm_image, :price, :area, :feature, user_attributes:[:id])
  end

  def search_params
    params.require(:farm).permit(:farm_name)
  end

end
