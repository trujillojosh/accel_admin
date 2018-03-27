class CreateBulkAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :bulk_attendances do |t|
      t.string :title
      t.date :date
      t.text :attendees, array: true, default: []
      t.text :desc

      t.timestamps
    end
  end
end
