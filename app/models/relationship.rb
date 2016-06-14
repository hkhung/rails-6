class Relationship < ActiveRecord::Base
  belongs_to :children
  belongs_to :parent
  belongs_to :mother

  belongs_to :person

end
