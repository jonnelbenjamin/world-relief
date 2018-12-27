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
    @user = User.create(strong_params)
      if @user.valid?
      @user.save
      redirect_to @user
      else
      render 'new'
      end
end
  def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
    end



  private

  def strong_params
    params.require(:user).permit(:name, :age,:country,:profession)
  end
end
