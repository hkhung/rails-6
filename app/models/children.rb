class Children < Person
	
	belongs_to 	:person
	belongs_to 	:parent
	has_many 		:sons
	has_many 		:daughters
	
end