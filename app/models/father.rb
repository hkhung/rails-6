class Father < Parent
	

	belongs_to :person
	belongs_to :parent


	def say_something
		'Hello, I am your father.'
	end
end