class CreateCheats < ActiveRecord::Migration[6.0]
  def change
    create_table :cheats do |t|
      t.string :name
      t.string :explanation
      t.text   :image
      t.timestamps
    end
  end
end
