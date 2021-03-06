class UsersController < ApplicationController
  def new
    @user = User.new #Userクラスのインスタンスを作成、インスタンス変数に入れてる
  end
  
  def edit
  end
  
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.order(created_at: :desc)
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def update
    if current_user.update(user_params)
      redirect_to user_path , notice: '基本情報を編集しました。'
    else
      render 'edit'
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
