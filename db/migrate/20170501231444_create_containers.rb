class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.string :cod
      t.references :container_type, foreign_key: true

      t.timestamps
    end
  end
end
