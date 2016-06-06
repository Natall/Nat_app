class Phrase < ActiveRecord::Base

  has_many :examples
  has_many :likes, as: :likeable
  belongs_to :category
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true, length: { maximum: 150 }

end

