class Category < ActiveRecord::Base
  has_many :phrases
end
