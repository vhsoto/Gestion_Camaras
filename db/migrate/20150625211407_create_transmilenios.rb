class CreateTransmilenios < ActiveRecord::Migration
  def change
    create_table :transmilenios do |t|
      t.string :spot
      t.string :orientation
      t.string :address
      t.text :strangeness_fvs
      t.text :strangeness_mebog
      t.boolean :polygon
      t.boolean :condition

      t.timestamps null: false
    end
  end
end
