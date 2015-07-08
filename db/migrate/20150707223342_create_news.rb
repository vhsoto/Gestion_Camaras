class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :mebog
      t.text :fvs
      t.references :newable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
