class AddAcceptToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :accept, :boolean
  end
end
