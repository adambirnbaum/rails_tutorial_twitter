class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save  # @user.save will only be true if the save succeeds
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user   # redirect to user's profile; equivalent to redirect_to user_url(@user)
    else
      render 'new'   # give user try entering a new user again
    end
  end

  private # don't allow people on the web to see this
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
