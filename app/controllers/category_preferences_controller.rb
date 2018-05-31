class CategoryPreferencesController < ApplicationController

before_action :set_user, only: [:create]

def create
  if current_user.category_preferences.present?
    flash[:alert] = 'vous avez déja voté'
    redirect_to user_path(@user)
  elsif  params[:category_preference] == nil
    flash[:alert] = 'merci de sélectionner les catégories'
    redirect_to user_path(@user)
  else
    category_ids = category_params
    @user.category_preferences << category_ids.map { |category_id| CategoryPreference.new(category_id: category_id) }
    @user.category_preferences.each do |category_preference|
      if category_preference.save
      else
      flash[:alert] = 'hum, :( il semble vous ayez déja choisi cette categorie'
      end
    end

  end
end


  private

  def set_user
    @user = current_user
  end

  def category_params
    params[:category_preferences][:categories][:category_ids]
  end

end
