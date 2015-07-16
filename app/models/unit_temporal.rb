class UnitTemporal < ActiveRecord::Base
	has_many :news, as: :newable, class_name: "New", dependent: :destroy
	
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			unit_temporal_hash = row.to_hash 
	    UnitTemporal.create!(unit_temporal_hash) unless UnitTemporal.exists?(spot: unit_temporal_hash['spot'])	   	    
		end
	end	
end
