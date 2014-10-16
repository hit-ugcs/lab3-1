class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :idd
      t.string :namee
      t.string :nameee
      t.integer :projectt
      t.integer :finall
      t.integer :labb
      t.integer :classs
      t.integer :totall

      t.timestamps
    end
  end
end
