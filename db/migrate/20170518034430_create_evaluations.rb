class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :ind_1
      t.integer :ind_2
      t.integer :ind_3
      t.integer :ind_4
      t.integer :ind_5
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
