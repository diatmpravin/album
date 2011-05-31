class Signup < ActiveRecord::Base
  
  validates_presence_of :name,:email,:password,:confirm_password,:phone 
  validates_uniqueness_of :email
end
