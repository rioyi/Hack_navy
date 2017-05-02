class Ship < ApplicationRecord
  belongs_to :company, dependent: :destroy
  has_many :travels

   validates :name, :company_id, presence: true
end
