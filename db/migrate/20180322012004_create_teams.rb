class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :batch
      t.integer :stage
      t.date :end
      t.boolean :active
      t.string :lead
      t.text :summary
      t.text :notes

      t.timestamps
    end
  end
end
