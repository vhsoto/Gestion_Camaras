class RemoveStrangenessFromLeased < ActiveRecord::Migration
  def change
  	remove_column :human_connections, :strangeness_mebog, :text
    remove_column :human_connections, :strangeness_fvs, :text
    remove_column :leaseds, :strangeness_mebog, :text
    remove_column :leaseds, :strangeness_fvs, :text    
    remove_column :owns, :strangeness_mebog, :text
    remove_column :owns, :strangeness_fvs, :text
    remove_column :schools, :strangeness_mebog, :text
    remove_column :schools, :strangeness_fvs, :text
    remove_column :transmilenios, :strangeness_mebog, :text
    remove_column :transmilenios, :strangeness_fvs, :text
    remove_column :unit_temporals, :strangeness_mebog, :text
    remove_column :unit_temporals, :strangeness_fvs, :text
  end
end
