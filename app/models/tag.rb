class Tag < ApplicationRecord

	#validates_presence_of :name -- > This can be removed or make it optional: true. Rigth now is mandatory

	has_many :list_tags,  inverse_of: :tag
	has_many :todos, :through => :list_tags
end
