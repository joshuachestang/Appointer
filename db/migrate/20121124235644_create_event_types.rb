class CreateEventTypes < ActiveRecord::Migration
  def change
    create_table :event_types do |t|
      t.string :title
      t.integer :business_id
      t.integer :duration

      t.timestamps
    end
  end
end
