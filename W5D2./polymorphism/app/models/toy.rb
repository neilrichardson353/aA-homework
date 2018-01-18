class Toy < ApplicationRecord
  validates :name, :toyable_id, :toyable_type, prensence: true, uniqueness: true

  belongs_to :toyable, polymorphic: true
end
