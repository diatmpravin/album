class Login < ActiveRecord::Base

  validates_presence_of :email,:password

end
