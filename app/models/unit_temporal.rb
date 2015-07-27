class UnitTemporal < ActiveRecord::Base
	
	has_many :events, as: :eventable, dependent: :destroy
	
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			unit_temporal_hash = row.to_hash 
			unit_temporal_hash.delete('project')
	    UnitTemporal.create!(unit_temporal_hash) unless UnitTemporal.exists?(spot: unit_temporal_hash['spot'])	   	    
		end
	end	
end
