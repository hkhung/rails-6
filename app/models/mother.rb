class Mother < Parent
	belongs_to :person
	belongs_to :parent


	def say_something
		'Hello, I am your mother.'
	end

	def age_condition
		raise 'Age mother must be greater than 18' if age < 18
	end
end