class CategoryPreference < ApplicationRecord
  belongs_to :user
  belongs_to :category
  # validates :category_id, uniqueness: true, on: :create

def self.try
group = CategoryPreference.group(:category).count
group.sort {|a1,a2| a2[1]<=>a1[1]}
end


end
