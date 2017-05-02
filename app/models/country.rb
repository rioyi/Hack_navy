class Country < ApplicationRecord
	has_many :ports

	validates :name, presence: true
end
