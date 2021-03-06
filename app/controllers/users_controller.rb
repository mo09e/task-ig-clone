class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :favorites]
  before_action :check_user, only: [:edit, :update]
  before_action :current_user
  before_action :authenticate_user, only: [:show, :edit]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user.id), notice: "ユーザー情報を編集しました！"
    else
      render :edit
    end
  end

  def favorites
    @favorites = Favorite.where(user_id: @user)
  end

  private
  def user_params
    params.require(:user).permit(:name, :nickname, :email, :birthday, :image, :image_cache,
                                 :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def check_user
    if current_user.id != @user.id
      redirect_to user_path, notice: "権限がありません。"
    end
  end
end
