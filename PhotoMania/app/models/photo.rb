class Photo < ActiveRecord::Base
  # attr_accessible :title, :body
	belongs_to :user
	def image_file=(input_data)
    		self.filename = input_data.original_filename
    		self.content_type = input_data.content_type.chomp
    		self.binary_data = input_data.read
  	end

end
