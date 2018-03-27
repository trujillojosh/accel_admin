class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.date :date
      t.text :desc
      t.boolean :here

      t.timestamps
    end
  end
end
