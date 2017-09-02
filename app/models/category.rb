class Category < ApplicationRecord

belongs_to :todo
belongs_to :task

accepts_nested_attributes_for :task, reject_if: :all_blank, allow_destroy: true

end
