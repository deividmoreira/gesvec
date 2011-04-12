class CreatePerfils < ActiveRecord::Migration
  def self.up
    create_table :perfils do |t|
      t.integer :id
      t.integer :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :perfils
  end
end
