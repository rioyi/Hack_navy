class CreateBls < ActiveRecord::Migration[5.0]
  def change
    create_table :bls do |t|
      t.string :cod
      t.references :travel, foreign_key: true
      t.references :shipper, index: true
      t.references :consignee, index: true
      t.references :port_shipment, index: true
      t.references :port_landing, index: true
      t.references :master, index: true

      # t.string :cod
      # t.references :travel, foreign_key: true
      # t.references :shipper, foreign_key: 'company_id', class_name:'Company'
      # t.references :consignee, foreign_key: 'company_id', class_name:'Company'
      # t.references :port_shipment, foreign_key: 'port_id', class_name:'Port'
      # t.references :port_landing, foreign_key: 'port_id', class_name:'Port'
      # t.references :master, index: true

      t.timestamps
    end
  end
end
