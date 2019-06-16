class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = "ユーザー「#{@user.name}」を登録しました。"
      redirect_to users_path(@user)
    else
      flash[:danger] = "「#{@user.name}」はすでに使用されています。"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
