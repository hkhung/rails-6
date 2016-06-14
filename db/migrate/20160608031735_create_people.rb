class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.references :married, index: true
      t.references :parent, index: true
      t.timestamps null: false
    end
  end
end
