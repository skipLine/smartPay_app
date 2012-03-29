class Foodorder < ActiveRecord::Base
  belongs_to :user
  validates :item, :length => { :maximum => 140 }
end
