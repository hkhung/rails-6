class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references 	:children, index: true
      t.references 	:parent, index: true 
      t.string 			:relation_type
      t.timestamps null: false
    end
  end
end
