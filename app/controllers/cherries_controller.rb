class CherriesController < ApplicationController
  def index
    @cherries = Cherry.all.order(:id).reverse_order
    # @farms = Farm.all
    @user = User.find_by(id: params[:id])
    #親のfarmから子のCherryを紐づけている
    @farm = Farm.where(user_id: @user_id)
    # @cherries = Cherry.where(farm_id: @farm_id)
    @search = Farm.ransack(params[:q])
    @farms = @search.result
  end

  def new
    @cherry = Cherry.new
    @farm = Farm.find(params[:farm_id])
  end

  def create
    # renderを使う場合は変数に＠を使はないとエラーになる
    @cherry = Cherry.new(cherry_params)
    if @cherry.save
      redirect_to cherries_path
    else
      render "admin_new"
    end

  end

  def show
    @farm = Farm.find(params[:id])
    @cherry = Cherry.where(farm_id: @farm.id)
    #binding.pry
  end

  def edit
    @farm = Farm.find(params[:id])
    @cherries = Cherry.where(farm_id: params.id)
    #@user = @cherry.farm.user
    #@farm = @cherry.farm 
  end

  def update
  end

  def destroy
    cherry = Cherry.find(params[:id])
    farm = cherry.farm
    cherry.destroy
    redirect_to farm_cherries_path(farm.id)
  end

  def admin_index
    @cherries = Cherry.all.reverse_order
  end

  def admin_new
    @cherry = Cherry.new
  end

  def admin_create
    @cherry = Cherry.new(cherry_params)
    if @cherry.save
      redirect_to admin_cherries_path
    else
      render "admin_new"
    end
  end

  def admin_show
    @cherry = Cherry.find(params[:id])
    @farm = @cherry.farm
  end

  def admin_edit
    @cherry = Cherry.find(params[:id])
  end

  def admin_update
    @cherry = Cherry.find(params[:id])
    @cherry.update(cherry_params)
    redirect_to cherries_path
  end

  def admin_destroy
    cherry = Cherry.find(params[:id])
    cherry.destroy
    redirect_to admin_cherries_path
  end

  def cherries_breed
    @farm = Farm.find(params[:farm_id])
    @cherries = @farm.cherries
    @user = User.find(@farm.user.id)
    #親のfarmから子のCherryを紐づけている
    # @cherries = Cherry.where(farm_id: @farm_id)
    @search = Farm.ransack(params[:q])
    @farms = @search.result
  end


  private
  def cherry_params
    params.require(:cherry).permit(:cherry_name, :sour, :taste, :size, :content, :cherry_image, :farm_id)
  end

end
