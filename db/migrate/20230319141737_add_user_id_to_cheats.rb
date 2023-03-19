class AddUserIdToCheats < ActiveRecord::Migration[6.0]
  def change
    add_column :cheats, :user_id, :integer
  end
end
