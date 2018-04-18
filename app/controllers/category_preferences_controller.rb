class CategoryPreferencesController < ApplicationController

before_action :set_user, only: [:create]

def create
  if @user.category_preferences.present?
    flash[:alert] = 'vous avez déja voté'
    redirect_to user_path(@user)
  else
    @user = User.find(params[:id])
    category_ids = category_params
    @user.category_preferences << category_ids.map { |category_id| CategoryPreference.new(category_id: category_id) }
    @user.category_preferences.each do |category_preference|
      if category_preference.save
        # binding.pry
      else
      flash[:alert] = 'hum, :( il semble vous ayez déja choisi cette categorie'
      end
    end
  redirect_to user_path(@user)
  end
end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def category_params
    params[:category_preferences][:categories][:category_ids]
  end

end
