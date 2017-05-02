class Bl < ApplicationRecord
  #belongs_to :travel
  belongs_to :travel, foreign_key: 'travel_id', dependent: :destroy
  #belongs_to :shipper
  #belongs_to :consignee
  #belongs_to :port_shipment
  #belongs_to :port_landing
  #belongs_to :master

	belongs_to :shipper, class_name: 'Company', dependent: :destroy
	belongs_to :consignee, class_name: 'Company', dependent: :destroy
	
	belongs_to :port_shipment, class_name: "Port", dependent: :destroy
	belongs_to :port_landing, class_name: "Port", dependent: :destroy
	
	has_many :house, class_name: 'Bl', foreign_key: 'bl_id' 
	belongs_to :master, class_name: 'Bl', optional: true, dependent: :destroy

	validates :cod, :travel_id, :shipper_id, :consignee_id, :port_shipment_id, :port_landing_id, presence: true
	validates :cod, length: 11
	validates :cod, uniqueness: true

end
