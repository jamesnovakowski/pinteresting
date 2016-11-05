class Pin < ApplicationRecord
	belongs_to :user

	has_attached_file :image#, :styles => { :medium => "300x300#", :thumb => "100x100#" }

	#paperclip requires the image item be validated.
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end