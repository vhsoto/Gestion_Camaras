class AddLocationToLeased < ActiveRecord::Migration
  def change
    add_column :human_connections, :cosec, :string
    add_column :human_connections, :location, :string
    add_column :leaseds, :cosec, :string
    add_column :leaseds, :location, :string
    add_column :owns, :cosec, :string
    add_column :owns, :location, :string
    add_column :schools, :cosec, :string
    add_column :schools, :location, :string
    add_column :transmilenios, :cosec, :string
    add_column :transmilenios, :location, :string
    add_column :unit_temporals, :cosec, :string
    add_column :unit_temporals, :location, :string
  end
end
