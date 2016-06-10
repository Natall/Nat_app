class Example < ActiveRecord::Base
  belongs_to :phrase
  validates_presence_of :phrase
  belongs_to :user
  has_many :likes, as: :likeable
end
