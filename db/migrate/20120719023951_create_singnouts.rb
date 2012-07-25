class CreateSingnouts < ActiveRecord::Migration
  def change
    create_table :singnouts do |t|
      t.string :pdf

      t.timestamps
    end
  end
end
