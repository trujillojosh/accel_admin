class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :intra
      t.string :first
      t.string :last
      t.boolean :dorm
      t.string :slackname
      t.string :imac
      t.text :notes

      t.timestamps
    end
  end
end
