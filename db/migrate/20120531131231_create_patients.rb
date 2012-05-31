class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :mrn

      t.timestamps
    end
  end
  def self.down

  end
end
