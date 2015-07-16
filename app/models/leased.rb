class Leased < ActiveRecord::Base
	
	has_many :news, as: :newable, class_name: "New", dependent: :destroy
	
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			leased_hash = row.to_hash 
	    Leased.create!(leased_hash) unless Leased.exists?(spot: leased_hash['spot'])	   	    
		end
	end
	
end
