class Event < ApplicationRecord

	belongs_to :club
	has_and_belongs_to_many :users

	mount_uploader :image_url, ImageUploader

end
