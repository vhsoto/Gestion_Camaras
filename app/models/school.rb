class School < ActiveRecord::Base
	has_many :strangenesses, dependent: :destroy
	
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			school_hash = row.to_hash 
      School.create!(school_hash) unless School.exists?(spot: school_hash['spot'])
		end
	end

end
