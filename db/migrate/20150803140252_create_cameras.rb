class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.string :spot
      t.string :orientation
      t.string :address
      t.boolean :polygon
      t.boolean :condition
      t.string :cosec
      t.string :location
      t.decimal :lat
      t.decimal :lng
      t.integer :project

      t.timestamps null: false
    end
  end
end
