class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.save
    render "new_farm_path"
  end


  def edit
    @user = current_user
    @search = Farm.ransack(params[:q])
    @farms = @search.result
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to farms_path
  end

  def destroy
  end


  def admin_index
  end

  def admin_update
  end

  def admin_destroy
  end

  private
  def user_params
    params.require(:user).permit(:name_kanji, :name_kana, :email, :phone_number, :post_code, :address)
  end

end
