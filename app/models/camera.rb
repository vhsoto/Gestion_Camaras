class Camera < ActiveRecord::Base

	has_many :events
	#validates :spot, uniqueness: true
	
	def self.import(file)
		CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
			camera_hash = row.to_hash		  
		  Camera.create!(camera_hash) 
		end
	end
end

