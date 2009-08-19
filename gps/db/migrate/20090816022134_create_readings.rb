class CreateReadings < ActiveRecord::Migration
  def self.up
    create_table :readings do |t|
      t.references :device
      t.string :admin_name1
      t.string :address
      t.float :altitude
      t.string :event_type
      t.boolean :geocoded, :default => false, :null => false
      t.boolean :gpio1
      t.boolean :gpio2
      t.float :direction
      t.boolean :ignition
      t.float :latitude
      t.float :longitude
      t.string :note
      t.boolean :notified, :default => false
      t.string :place_name
      t.float :speed
      t.string :street
      t.string :street_number
      t.integer :reference_id
      t.string :geofence_event_type
      t.references :geofence
      t.timestamps
    end
    
    add_index :readings, :device_id
  end

  def self.down
    remove_index :readings, :device_id
    drop_table :readings
  end
end
