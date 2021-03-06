class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.string :name
      t.boolean :attend
      t.string :email
      t.string :tel
      t.text :other

      t.timestamps
    end
  end
end
