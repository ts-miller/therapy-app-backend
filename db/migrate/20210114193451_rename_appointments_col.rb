class RenameAppointmentsCol < ActiveRecord::Migration[6.0]
  def change
    change_column :appointments, :date, :text
    change_column :appointments, :time, :text
  end
end
