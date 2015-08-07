class AddKeywordsToCamera < ActiveRecord::Migration
  def change
    add_column :cameras, :keywords, :string
    add_index :cameras, :keywords
  end
end
