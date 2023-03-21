class CreateCheats < ActiveRecord::Migration[6.0]
  def change
    create_table :cheats do |t|
      t.string :name
      t.string :explanation
      t.integer :category_id,  null: false  
      t.integer :area_id,      null: false  
      t.integer :volume_id,    null: false  
      t.integer :price_id,     null: false  
      t.references :user,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
