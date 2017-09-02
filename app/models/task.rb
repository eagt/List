class Task < ApplicationRecord

has_many :categories,  inverse_of: :task
has_many :todos,  through: :categories

end
