class Course < ApplicationRecord
	#attr_accessor :image 

	#mount_uploader :course, ImageUploader
	mount_uploader :image, ImageUploader



	belongs_to :user
	has_many :sections

	validates :title, presence: true
	validates :description, presence: true
	validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}

end