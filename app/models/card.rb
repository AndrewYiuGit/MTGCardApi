class Card < ActiveRecord::Base
	belongs_to :mtg_set

	validates :name, presence: true
	validates :type, presence: true
	validates :multiverse_id, presence: true
	validates :rarity, presence: true
	validates :artist, presence: true
	validates :collector_number, presence: true
	validates :image_name, presence: true
	validates :legalities, presence: true
	validates :printings, presence: true

end
