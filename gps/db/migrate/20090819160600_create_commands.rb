class CreateCommands < ActiveRecord::Migration
  def self.up
    create_table :commands do |t|
      t.references :device
      t.string :command
      t.string :response
      t.string :status, :default => 'Processing'
      t.datetime :ended_at
      t.integer :reference_id

      t.timestamps
    end
    
    add_index :commands, :device_id
    add_index :commands, :reference_id
  end

  def self.down
    remove_index :commands, :reference_id
    remove_index :commands, :device_id
    mind
    drop_table :commands
  end
end
