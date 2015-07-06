class HumanConnection < ActiveRecord::Base	

	has_many :strangenesses, :as => :commentable, dependent: :destroy
	
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			human_connection_hash = row.to_hash 
      HumanConnection.create!(human_connection_hash) unless HumanConnection.exists?(spot: human_connection_hash['spot'])
		end
	end
	
end