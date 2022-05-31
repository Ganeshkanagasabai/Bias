class Tag < ApplicationRecord
   has_and_belongs_to_many :items
   belongs_to :items
end
