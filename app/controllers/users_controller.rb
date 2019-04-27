class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    categories = Category.all
  end


  def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        redirect_to root_path, alert: "Ooooops, assurez vous de remplir les deux champs, ce mail est peut etre déjà utilisé ou non conforme au format attendu "
      end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email)
    end
end
