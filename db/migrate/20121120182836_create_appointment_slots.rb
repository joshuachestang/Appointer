class CreateAppointmentSlots < ActiveRecord::Migration
  def change
    create_table :appointment_slots do |t|
      t.integer :user_id
      t.integer :business_id
      t.integer :appointment_type_id
      t.string :name
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end