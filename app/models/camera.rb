class Camera < ActiveRecord::Base

	has_many :events

	paginates_per 25

  before_save :create_keywords
  scope :search, ->(keyword) { where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }


	def self.import(file)
		CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
			camera_hash = row.to_hash		  
		  Camera.create!(camera_hash) unless Camera.exists?(spot: camera_hash[:spot], address: camera_hash[:address])
		end
	end
	

	private
	def create_keywords
	    self.keywords = [spot, address, orientation, location, cosec].map(&:downcase).join(' ')
	end
end

