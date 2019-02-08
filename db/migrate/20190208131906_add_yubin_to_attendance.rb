class AddYubinToAttendance < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :yubin, :string
  end
end
