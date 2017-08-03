class Picture < ApplicationRecord
	belongs_to :dog

  	has_attached_file :image

  	# validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  	do_not_validate_attachment_file_type :image
end