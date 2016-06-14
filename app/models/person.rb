class Person < ActiveRecord::Base
	extend Enumerize
	validates :age, :presence => true, :numericality => {:greater_than => 0}


	has_many :childrens, 				foreign_key: 'parent_id' 
	has_many :sons, 						-> { where( gender: 'male' )} , foreign_key: 'parent_id'
	has_many :daughters, 				-> { where( gender: 'female' )}, foreign_key: 'parent_id'

	has_one  :married,					foreign_key: 'married_id', class_name: 'Person' 
	has_many :parents, 					-> (person){ joins(:married) }, primary_key: :parent_id, foreign_key: :id 

	has_one	 :mother, 					-> { where( gender: 'female' )}, primary_key: :parent_id, foreign_key: :id 
	has_one  :father, 					-> { where( gender: 'male' )}, primary_key: :parent_id, foreign_key: :id 

	before_save :check_age

	enumerize :gender, in: [:male, :female]

	def fullname
		name.split(' ')
	end
	
	def first_name
		fullname.first
	end

	def say_something
		'Hello, My name is ' << name
	end

	def older_than(user)
		age - user.age
	end

	def father_of?(user)
		return true if user.father.present? && user.father.id = id
		false
	end

	def brother_of?(user)
		return true if user.father.present? && father.present? && user.father.id = father.id
		false
	end
end
