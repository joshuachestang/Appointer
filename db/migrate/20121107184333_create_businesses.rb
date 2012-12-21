class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.datetime :open_time
      t.datetime :close_time

      t.timestamps
    end
  end
end
