class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render :show, status: :created, location: @user
    else
      @errors = @user.errors.full_messages
      render 'shared/errors', status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end
