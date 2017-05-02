class CreateTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :travels do |t|
      t.string :cod
      t.references :ship, foreign_key: true
      t.date :docking_date

      t.timestamps
    end
  end
end
