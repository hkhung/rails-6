class Daughter < Children
	belongs_to :person
	belongs_to :children
	belongs_to :relationship


	def say_something
		'Hello, I am your daughter.'
	end
end