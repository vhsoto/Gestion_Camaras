class Transmilenio < ActiveRecord::Base
	has_many :strangenesses, :as => :commentable, dependent: :destroy
	
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			transmilenio_hash = row.to_hash 
	    Transmilenio.create!(transmilenio_hash) unless Transmilenio.exists?(spot: transmilenio_hash['spot'])	   	    
		end
	end	
end
