class CreateDeviceData < ActiveRecord::Migration[6.0]
  def change
    create_table :device_data do |t|
      t.float :temperature
      t.float :humidity
      t.float :carbon_monoxide
      t.string :status
      t.references :device, null: false, foreign_key: true

      t.timestamps
    end
  end
end
