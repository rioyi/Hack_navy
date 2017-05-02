class Port < ApplicationRecord
  belongs_to :country

  def self.show
  	Port.all
  end


end
