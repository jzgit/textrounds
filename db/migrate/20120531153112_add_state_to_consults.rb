class AddStateToConsults < ActiveRecord::Migration
  def self.up
    add_column :consults, :state, :string
    add_column :consults, :user_id, :integer
  end
  def self.down
    remove_column :consults, :user_id
    remove_column :consults, :state
  end
end
