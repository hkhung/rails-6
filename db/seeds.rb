# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.destroy_all
Person.create([
		{ name: 'John Fwz', age: 40, gender: 'male', married_id: 2 },
		{ name: 'Lily Fwz', age: 40, gender: 'female', married_id: 1 },
		{ name: 'William Fwz', age: 18, gender: 'male', parent_id: 1 },
		{ name: 'Michael Fwz', age: 17, gender: 'male', parent_id: 1 },
		{ name: 'Ava Fwz', age: 14, gender: 'female', parent_id: 1 },
		{ name: 'Mia Fwz', age: 10, gender: 'female', parent_id: 1 },
	])