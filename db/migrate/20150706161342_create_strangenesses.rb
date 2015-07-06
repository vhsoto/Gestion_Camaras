class CreateStrangenesses < ActiveRecord::Migration
  def change
    create_table :strangenesses do |t|
      t.integer :strangeness_id
      t.string :strangeness_type
      t.text :strangeness_mebog
      t.text :strangeness_fvs

      t.timestamps null: false
    end
  end
end
