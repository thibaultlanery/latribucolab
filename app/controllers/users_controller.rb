class UsersController < ApplicationController
  # before_action :set_user, only: [:show]

  def show
    categories = Category.all
  end


  def create
      @user = User.new(user_params)
    if @user.name.present? & @user.email.present? & params[:user][:category_preferences].present?
      category_ids = category_params
      @user.save
      @user.category_preferences << category_ids.map { |category_id| CategoryPreference.new(category_id: category_id) }
      @user.category_preferences.each do |category_preference|
          if category_preference.save
            respond_to do |format|
            format.html {   redirect_to users_path }
            format.js {} # <-- will render `app/views/reviews/create.js.erb`
            end
          else
            respond_to do |format|
            format.html { render 'user/show' }
            format.js {} # <-- idem
          end
        end
      end
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

     def category_params
    params[:user][:category_preferences][:category_ids]
    end

end
