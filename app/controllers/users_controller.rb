class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.status = true
    if @user.save
      redirect_to login_path, notice: "User Created successfully"
    else
      render :new
    end
  end


 def login
  user = User.find_by(name: params[:name])

  if user.present? && user.password == params[:password]
    session[:user_id] = user.id
    redirect_to userbooking_path, notice: "User logged in successfully"
  else
    flash[:alert] = "Invalid username or password"
    redirect_to login_path
  end
end

def logout
  session[:user_id] = nil
  redirect_to home_path, notice: "User logged out successfully"
end



def home
  @user = User.new
  render layout: "Empty"
end

  def edit
    # Implement if needed
  end

  def delete
    # Implement if needed
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
