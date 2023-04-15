class CreateEmps < ActiveRecord::Migration[7.0]
  def change
    create_table :emps do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :designation

      t.timestamps
    end
  end
end
