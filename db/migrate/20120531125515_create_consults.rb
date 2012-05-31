class CreateConsults < ActiveRecord::Migration
  def self.up
    create_table :consults do |t|
      t.integer :consulting_team_id
      t.integer :primary_team_id
      t.integer :patient_id
      t.string  :room
      t.text    :hpi
      t.text    :problem_list
      t.text    :medications
      t.text    :cross_cover

      t.timestamps
    end
  end
  def self.down
    drop_table :consults
  end
end
