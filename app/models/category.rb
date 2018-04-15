class Category < ApplicationRecord
  has_many :users, through: :category_preferences, dependent: :destroy

end
