class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :mebog
      t.text :fvs
      t.date :date
      t.references :camera, index: true

      t.timestamps null: false
    end
    add_foreign_key :events, :cameras
  end
end
