class CreateCheats < ActiveRecord::Migration[6.0]
  def change
    create_table :cheats do |t|
      t.string :name
      t.string :explanation
      t.references :user,           null: false, foreign_key: true
      t.timestamps
    end
  end
end
