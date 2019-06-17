class UsersController < ApplicationController
  # before_action :set_user, only: [:show]

  def show
    categories = Category.all
  end


  def create
      @user = User.new(user_params)
      if @user.name.present? & @user.email.present? & params[:user][:category_preferences].present?
      category_ids = category_params
        if @user.save
        @user.category_preferences << category_ids.map { |category_id| CategoryPreference.new(category_id: category_id) }
        @user.category_preferences.each do |category_preference|
          if category_preference.save
          else
            flash[:alert] = 'hum, :( il semble vous ayez déja choisi cette categorie'
          end
        end
          session[:user_id] = @user.id
          redirect_to user_path(@user)
        else
          redirect_to root_path, alert: "Ooooops, assurez vous de remplir les deux champs, ce mail est peut etre déjà utilisé ou non conforme au format attendu "
        end
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
      params.require(:user).permit(:name, :email, :accept)
    end
    def category_params
      params[:user][:category_preferences][:category_ids]
    end

end
