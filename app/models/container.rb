class Container < ApplicationRecord
  belongs_to :container_type, dependent: :destroy

  validates :cod, :travel_id, :shipper_id, :consignee_id, :port_shipment_id, :port_landing_id, presence: true
	validates :cod, length: 11
	validates :cod, uniqueness: true
	validates :container_type_id presence: true
end
