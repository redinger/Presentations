class CreateAvailableCommands < ActiveRecord::Migration
  def self.up
    create_table :available_commands do |t|
      t.string :command
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :available_commands
  end
end
