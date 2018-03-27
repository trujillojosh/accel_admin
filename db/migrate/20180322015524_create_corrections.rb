class CreateCorrections < ActiveRecord::Migration[5.1]
  def change
    create_table :corrections do |t|
      t.references :team, foreign_key: true
      t.string :corrector
      t.date :date
      t.text :pitch
      t.text :demo
      t.text :b_kpi_a
      t.text :t_kpi_a
      t.text :help_a
      t.text :blockers_a
      t.text :other

      t.timestamps
    end
  end
end
