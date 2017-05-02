class ContainerType < ApplicationRecord
	has_many :container

	validates :name, presence: true
end
