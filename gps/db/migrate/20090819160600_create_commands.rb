class CreateCommands < ActiveRecord::Migration
  def self.up
    create_table :commands do |t|
      t.references :device
      t.string :command
      t.string :response
      t.string :status, :default => 'Processing'
      t.datetime :started_at
      t.datetime :ended_at
      t.integer :reference_id

      t.timestamps
    end
  end

  def self.down
    drop_table :commands
  end
end
