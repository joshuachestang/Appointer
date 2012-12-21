class CreateAppointmentTypes < ActiveRecord::Migration
  def change
    create_table :appointment_types do |t|
      t.string :title
      t.integer :business_id
      t.integer :duration

      t.timestamps
    end
  end
end
