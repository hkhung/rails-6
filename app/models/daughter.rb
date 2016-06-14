class Daughter < Children
	belongs_to :person
	belongs_to :children


	def say_something
		'Hello, I am your daughter.'
	end
end