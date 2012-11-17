class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :calendar_id
      t.datetime :appointment_time

      t.timestamps
    end
  end
end
