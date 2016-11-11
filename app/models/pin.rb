class Pin < ApplicationRecord
	#Paperclip.options[:command_path] = '/usr/bin'

	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	#paperclip requires the image item be validated.
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	validates :description, :presence => true
	validates :image, :presence => true

end
