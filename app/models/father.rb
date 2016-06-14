class Father < Person
	belongs_to :person 

	def say_something
		'Hello, I am your father.'
	end

	def age_condition
		raise 'Age father must be greater than 20' if age < 20
	end
end