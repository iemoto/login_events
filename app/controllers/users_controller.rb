class UsersController < ApplicationController

  def index
    @events = current_user.events
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end



  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
