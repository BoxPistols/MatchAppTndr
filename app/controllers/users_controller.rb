class UsersController < ApplicationController

  def show
    # @userというインスタンス変数を用意する
    @user = User.find_by(id: params[:id])
  end

end
