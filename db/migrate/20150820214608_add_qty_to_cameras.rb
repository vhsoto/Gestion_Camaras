class AddQtyToCameras < ActiveRecord::Migration
  def change
    add_column :cameras, :qty, :integer
  end
end
