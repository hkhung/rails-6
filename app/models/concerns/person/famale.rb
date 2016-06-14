module Person::Famale
	extend ActiveSupport::Concern

	included do
		default_scope { where( gender: :famale )}
	end
end