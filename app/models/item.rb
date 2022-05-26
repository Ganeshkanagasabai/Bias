class Item < ApplicationRecord
    has_and_belongs_to_many :tags
    validates_presence_of :name, :description, :image, :example
end
