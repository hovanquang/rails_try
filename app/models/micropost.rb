class Micropost < ApplicationRecord

	belongs_to :user
	validates :conten, length: { maximum: 140 }, presence: true
	validates :user	, length: { maximum: 140 }, presence: true
end
