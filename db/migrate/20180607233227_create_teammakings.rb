class CreateTeammakings < ActiveRecord::Migration[5.1]
  def change
    create_table :teammakings do |t|
      t.text :t1q1
      t.text :t1q2
      t.text :t1q3
      t.text :t1q4
      t.text :t2q1
      t.text :t2q2
      t.text :t2q3
      t.text :t2q4
      t.text :t2q5
      t.text :t2q6
      t.text :t3q1
      t.text :t3q2
      t.text :t3q3
      t.text :t3q4
      t.text :t3q5
      t.text :t5q1
      t.text :t5q2
      t.text :t6q1
      t.text :t6q2
      t.text :t6q3
      t.text :t6q4
      t.text :t6q5
      t.text :t6q6

      t.timestamps
    end
  end
end
