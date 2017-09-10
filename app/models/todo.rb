class Todo < ApplicationRecord

	validates_presence_of :name

	has_many :tasks, inverse_of: :todo,  dependent: :destroy # dependent: :destroy means that if a todo list is destroyed it will destroy all the associated tasks
	has_many :list_tags,  inverse_of: :todo
	has_many :tags, :through => :list_tags, :class_name => 'Tag' #I'm not sure why is this last :class_name => 'tag', I guess it is saying to use that class

	# Rellate all the posible elements that will be nested on the form
	#accepts_nested_attributes_for :list_tags, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
	#accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true

end
