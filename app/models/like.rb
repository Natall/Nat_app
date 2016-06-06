class Like < ActiveRecord::Base
  belongs_to :likeable, polymorphic: true
  validates :value, presence: true, inclusion: { in: [-1, 1],
                                 message: "%{value} is not a valid value" }
end
