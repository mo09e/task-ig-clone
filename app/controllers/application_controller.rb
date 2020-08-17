class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper

  def authenticate_user
    if @current_user == nil
      flash[:notice] = t('ログインが必要です')
      redirect_to new_session_path
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # def check_user
  #   if @current_user != @user
  #     flash[:notice] = t("プロフィールの編集権限がありません")
  #     redirect_to pictures_path
  #   end
  # end

  # def check_contents
  #   if @current_user != @picture.user_id
  #     flash[:notice] = t("投稿記事の編集権限がありません")
  #     redirect_to pictures_path
  #   end
  # end
end
