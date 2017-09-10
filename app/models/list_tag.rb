class ListTag < ApplicationRecord
		
		validates_presence_of :name

		belongs_to :list
		belongs_to :tag

		accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true

end
