class CreateHistoryPoints < ActiveRecord::Migration[7.0]
  def change
    create_table :history_points do |t|
      t.references :store, null: false, foreign_key: true
      t.references :score, null: false, foreign_key: true
      t.integer :used_points
      t.boolean :recived
      t.timestamp :time

      t.timestamps
    end
  end
end
