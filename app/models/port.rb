class Port < ApplicationRecord
  belongs_to :country, dependent: :destroy
	has_many :port_shipment, foreign_key: 'port_shipment_id', class_name: 'Bl'
  has_many :port_landing, foreign_key: 'port_landing_id', class_name: 'Bl'
  validates :name,:country_id, presence: true

  def self.show
  	Port.all
  end

end
