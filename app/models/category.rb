class Category < ApplicationRecord
  has_many :category_preferences, dependent: :destroy
  has_many :users, through: :category_preferences


end
