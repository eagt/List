class Todo < ApplicationRecord
has_many :categories, inverse_of: :todo
has_many :tasks,  through: :categories

accepts_nested_attributes_for :categories, reject_if: :all_blank, allow_destroy: true


end
