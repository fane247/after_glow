class Club < ApplicationRecord

	has_many :events
	mount_uploader :image_url, ImageUploader

end
