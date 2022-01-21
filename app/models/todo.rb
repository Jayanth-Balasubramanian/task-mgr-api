class Todo < ApplicationRecord
  # validations
  validates_presence_of :name, :created_by
end
