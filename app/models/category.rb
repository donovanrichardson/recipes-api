class Category < ApplicationRecord
  has_many :recipes, dependent: :destroy

  #validate the presence in the model
  validates_presence_of :title, :created_by
end
