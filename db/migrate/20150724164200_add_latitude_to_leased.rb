class AddLatitudeToLeased < ActiveRecord::Migration
  def change
    add_column :leaseds, :lat, :decimal, {:precision=>10, :scale=>6}
    add_column :leaseds, :lng, :decimal, {:precision=>10, :scale=>6}

    add_column :human_connections, :lat, :decimal, {:precision=>10, :scale=>6}
		add_column :human_connections, :lng, :decimal, {:precision=>10, :scale=>6}

		add_column :owns, :lat, :decimal, {:precision=>10, :scale=>6}
		add_column :owns, :lng, :decimal, {:precision=>10, :scale=>6}

		add_column :schools, :lat, :decimal, {:precision=>10, :scale=>6}
		add_column :schools, :lng, :decimal, {:precision=>10, :scale=>6}

		add_column :transmilenios, :lat, :decimal, {:precision=>10, :scale=>6}
		add_column :transmilenios, :lng, :decimal, {:precision=>10, :scale=>6}

		add_column :unit_temporals, :lat, :decimal, {:precision=>10, :scale=>6}
		add_column :unit_temporals, :lng, :decimal, {:precision=>10, :scale=>6}
  end
end
