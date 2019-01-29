class AddOtherToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :name_furi, :string
    add_column :attendances, :address, :string
  end
end
