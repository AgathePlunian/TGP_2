class Gossip < ApplicationRecord
	validates :title, presence: true
	validates :content, presence: true
	belongs_to :user

	#LINK CITY
	belongs_to :city, optional: true

	#COMMENT
	has_many :comments
end
