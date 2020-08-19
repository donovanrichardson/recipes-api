class Recipe < ApplicationRecord
  belongs_to :category

  # validation
  validates_presence_of :name
end
