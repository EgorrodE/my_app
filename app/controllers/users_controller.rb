class UsersController < ApplicationController
  before_action :set_user

  def show
  end


  private
    def set_user
      @user = User.find_by_id(params[:user_id])
    end
end
