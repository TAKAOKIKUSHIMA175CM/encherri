class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.save
    render "new_farm_path"
  end


  def show
  end

  def update
  end

  def destroy
  end

  def admin
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
