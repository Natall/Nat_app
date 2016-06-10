class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :likeable, polymorphic: true
  validates :user_id, presence: true
  validates :value, presence: true, inclusion: { in: [-1, 1],
                                 message: "%{value} is not a valid value" }

  # def already_likes?(phrase)
  #   self.likes.find(:all, :conditions => ['phrase_id = ?', phrase.id]).size > 0
  # end
end
