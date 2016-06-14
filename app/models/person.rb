class Person < ActiveRecord::Base
	extend Enumerize
	validates :age, :presence => true, :numericality => { :greater_than => 0, message: 'Age must be greater than 0' }

	has_many :child_rls,  		class_name: 'Relationship', :foreign_key => 'parent_id'
	has_many :parent_rls,  		class_name: 'Relationship', :foreign_key => 'children_id'
	has_many :children, 			through: :child_rls, 	source: :children
	has_many :parents, 				through: :parent_rls, source: :parent
	has_many :sons, 					-> { where( gender: 'male') }, through: :child_rls, 	source: :children
	has_many :daughter, 			-> { where( gender: 'female') }, through: :child_rls, 	source: :children
	has_many :father, 				-> { where( gender: 'male') }, through: :parent_rls, source: :parent
	has_many :mother,		 			-> { where( gender: 'female') }, through: :parent_rls, source: :parent

	enumerize :gender, in: [:male, :female]
	before_save :age_condition

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

	def brother_of?(user)  
		begin
			parents.children.find(user.id)
	  rescue ActiveRecord::RecordNotFound
	    return false
		end
		true
	end	

	def father_of?(user)  
		begin
			children.find(user.id)
	  rescue ActiveRecord::RecordNotFound
	    return false
		end
		true
	end

	protected

	def age_condition
		raise 'Age must be greater than 0' if age < 1
	end
end
