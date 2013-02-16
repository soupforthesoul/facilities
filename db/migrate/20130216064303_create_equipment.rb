class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :uniqueid
      t.string :barcode
      t.string :assetprofile
      t.string :building
      t.string :floor
      t.string :room
      t.string :department
      t.string :system
      t.string :partof
      t.string :manufacturer
      t.string :model
      t.string :serial
      t.date :warrstart
      t.date :warrend
      t.boolean :instructions
      t.boolean :components
      t.string :pmschedule
      t.string :partnumber
      t.string :url

      t.timestamps
    end
  end
end
