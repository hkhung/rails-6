# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.destroy_all 
Relationship.destroy_all


john 		= Person.create({name: 'John Fwz', age: 40, gender: 'male' })
lily 		= Person.create({name: 'Lily Fwz', age: 40, gender: 'female' })
will 		= Person.create({name: 'William Fwz', age: 18, gender: 'male' })
mich 		= Person.create({name: 'Michael Fwz', age: 17, gender: 'male' })
ava 		= Person.create({name: 'Ava Fwz', age: 14, gender: 'female' })
mia 		= Person.create({name: 'Mia Fwz', age: 10, gender: 'female' })

Relationship.create([
		{ children_id: will.id,	parent_id: john.id },
		{ children_id: mich.id, parent_id: john.id },
		{ children_id: ava.id, 	parent_id: john.id },
		{ children_id: mia.id,  parent_id: john.id },
		{ children_id: will.id,	parent_id: lily.id },
		{ children_id: mich.id, parent_id: lily.id },
		{ children_id: ava.id, 	parent_id: lily.id },
		{ children_id: mia.id,  parent_id: lily.id }
	]) 