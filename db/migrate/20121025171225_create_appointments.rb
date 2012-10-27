class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :user_id
      t.datetime :appointment_time

      t.timestamps
    end
  end
end
