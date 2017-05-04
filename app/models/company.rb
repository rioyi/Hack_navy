class Company < ApplicationRecord
	enum kind: {navy: 0, nvocc: 1, customer: 2}
	# has_many :ships
	# has_many :bls	
	has_many :shipper, foreign_key: 'shipper_id', class_name: 'Bl'
  has_many :consignee, foreign_key: 'consignee_id', class_name: 'Bl'
  validates :name, presence: true
end
