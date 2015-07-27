class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :mebog
      t.text :fvs
      t.datetime :date
      t.references :eventable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
