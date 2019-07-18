class FarmsController < ApplicationController
  def index
    # ransackの導入によりFarm.allを書かなくても検索していないときはallが出るようになる
    # @farms = Farm.all
    @user = User.find_by(id: params[:id])
    #親のfarmから子のCherryを紐づけている
    #order(:id).reverse_orderで新しい投稿順に表示している
    @farm = Farm.where(user_id: @user_id).order(:id).reverse_order
    # @cherries = Cherry.where(farm_id: @farm_id)
    @cherries = Cherry.limit(17).order(:id).reverse_order
    # ランサックの記述
    @search = Farm.ransack(params[:q])
    @farms = @search.result.page(params[:page]).reverse_order

    # @farm = Farm.new
    # カミナリの記述

  end

  def search
  end

  def show
    @user = current_user
    @farm = Farm.find(params[:id])
    @user_id = User.find_by(id: params[:@user_id])
    @farm_id = Farm.where(user_id: @user_id)

  end

  def new
    @farm = Farm.new
    @search = Farm.ransack(params[:q])
    @farms = @search.result
  end

  def create
    @farm = Farm.new(farm_params)
    #ファームモデルのuser_idがデフォルトでは入らないのでidが入るように指定してあげる
    @farm.user_id = current_user.id
    if @farm.save
    redirect_to farms_path
    else
    render "new"

    end
  end

  def edit
    @farm = Farm.find(params[:id])
    @areas = Area.all
  end

  def update
    @farm = Farm.find(params[:id])
    if @farm.update(farm_params)
      redirect_to cherry_path(@farm.id)
    else
      render "edit"
    end
  end

  def destroy
    farm = Farm.find(params[:id])
    farm.destroy
    redirect_to my_farm_path
  end

  def about
    @search = Farm.ransack(params[:q])
    @farms = @search.result
  end

  def admin_index
    @farms = Farm.all.order(:id).reverse_order
    @user = User.find_by(id: params[:id])
    #親のfarmから子のCherryを紐づけている
    @farm = Farm.where(use_id: @user_id)
    @cherries = Cherry.where(farm_id: @farm_id)
  end

  def admin_show
  end

  def admin_edit
    @farm = Farm.find(params[:id])
  end

  def admin_update
    @farm = Farm.find(params[:id])
    if @farm.update(farm_params)
      redirect_to admin_farms_path
    else
      render "admin_edit"
    end
  end

  def admin_destroy
    farm = Farm.find(params[:id])
    farm.destroy
    redirect_to admin_farms_path
  end

  def area_index
    @area = Area.new
    @search = Farm.ransack(params[:q])
    @farms = @search.result
  end

  def area_search
    # @user = User.find_by(id: params[:id])
    #親のfarmから子のCherryを紐づけている
    @farm = Farm.where(area_id: params[:id])
    # @cherries = Cherry.where(farm_id: @farm_id)
    @cherries = Cherry.limit(17)
    # ランサックの記述
    @search = Farm.ransack(params[:q])
    @farms = @search.result.page(params[:page]).reverse_order
  end

  def my_farm
    @user = current_user
    # @farms = @user.farm
    @farm = Farm.where(user_id: @user.id)
    # @farm = Farm.find(params[:id])
    @cherries = Cherry.new
    @search = Farm.ransack(params[:q])
    @farms = @search.result.page(params[:page]).reverse_order
  end

# ストロングパラメーター
# 以下の入力を許可
  private
  def farm_params
    params.require(:farm).permit(:farm_name, :user_id, :business_day, :map_image, :farm_image, :price, :area, :feature, user_attributes:[:id])
  end

  def search_params
    params.require(:farm).permit(:farm_name)
  end

  def area_params
    params.require(:area).permit(:todoufuken)
  end

end
