class Travel < ApplicationRecord
  belongs_to :ship, dependent: :destroy
  has_many :bls
  #has_many :bls, foreign_key: 'port_landing_id', class_name: 'Bl'
end
