class ChangeMrnColumn < ActiveRecord::Migration
  def self.up
    change_column :patients, :mrn, :string
  end

  def self.down
    change_column :patients, :mrn, :integer
  end
end
