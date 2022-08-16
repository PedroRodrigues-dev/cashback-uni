class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.float :x
      t.float :y
      t.float :z

      t.timestamps
    end
  end
end
