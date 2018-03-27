class CreateAllHands < ActiveRecord::Migration[5.1]
  def change
    create_table :all_hands do |t|
      t.references :team, foreign_key: true
      t.date :date
      t.text :b_kpi
      t.text :t_kpi
      t.text :help
      t.text :blockers
      t.text :other

      t.timestamps
    end
  end
end
