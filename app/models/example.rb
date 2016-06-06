class Example < ActiveRecord::Base
  belongs_to :phrase
  belongs_to :user
  has_many :likes, as: :likeable
end
