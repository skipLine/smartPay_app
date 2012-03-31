class User < ActiveRecord::Base
  attr_accessible :name, :email, :address, :phone
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  phone_regex = /\(?(\d{3})\)?[ .-]?(\d{3})[ .-]?(\d{4})/i

  validates :name,  :presence => true,
                    :length   => { :maximum => 50 }
  validates :email, :presence => true,
                    :format   => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }
  validates :address,  :presence => true,
                       :length   => { :maximum => 140 }
  validates :phone, :presence => true,
                    :format => { :with => phone_regex }
end
