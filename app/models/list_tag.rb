class ListTag < ApplicationRecord
		
		#validates_presence_of :name

		belongs_to :todo  # here the , optional: :true option doesn't apply as this is a join table
		belongs_to :tag

		accepts_nested_attributes_for :tag, reject_if: :all_blank, allow_destroy: true

end
