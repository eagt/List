class ListTag < ApplicationRecord
		
		#validates_presence_of :name

		belongs_to :todo
		belongs_to :tag

		accepts_nested_attributes_for :tag, reject_if: :all_blank, allow_destroy: true

end
