class Parent < Person
	belongs_to 	:person
	belongs_to  :relationship  
	has_many :children
	def age_condition
		raise 'Age must be greater than 18' if age < 18
	end
end