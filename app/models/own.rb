class Own < ActiveRecord::Base
	
	has_many :events, as: :eventable, dependent: :destroy
	
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			own_hash = row.to_hash 
			own_hash.delete('project')
      Own.create!(own_hash) unless Own.exists?(spot: own_hash['spot'])
		end
	end

end