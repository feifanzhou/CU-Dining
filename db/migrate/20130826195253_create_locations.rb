class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :location
      t.string :region
      t.string :type
      t.binary :is_open
      t.string :calendar_address
      t.timestamps
    end
  end
end
