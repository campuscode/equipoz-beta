class CreateRentalEquipments < ActiveRecord::Migration[5.0]
  def change
    create_table :rental_equipments do |t|
      t.references :contract, foreign_key: true
      t.references :equipment, foreign_key: true

      t.timestamps
    end
  end
end
