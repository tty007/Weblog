class UsersController < ApplicationController
  def index
  end

  def show
    #自分以外見れないように設定する
    @user = User.find(params[:id])
    unless current_user.id == @user.id
      flash[:notice] = "自分以外の情報は見れません。"
      redirect_to controller: 'posts', action: 'index'
    end
  end
end
