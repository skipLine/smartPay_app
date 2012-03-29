class User < ActiveRecord::Base
  has_many :foodorders
end
