class School < ActiveRecord::Base
	
	has_many :events, as: :eventable, dependent: :destroy
	
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			school_hash = row.to_hash 
			school_hash.delete('project')
      School.create!(school_hash) unless School.exists?(spot: school_hash['spot'])
		end
	end

end
