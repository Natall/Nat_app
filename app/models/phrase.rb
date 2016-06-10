class Phrase < ActiveRecord::Base

  has_many :examples, dependent: :destroy
  accepts_nested_attributes_for :examples
  has_many :likes, as: :likeable, dependent: :destroy
  belongs_to :category
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true, length: { maximum: 150 }


  def likes_rating
    self.likes.sum(:value)
  end


end

