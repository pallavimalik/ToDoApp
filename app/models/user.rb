class User < ActiveRecord::Base
  has_secure_password
  #attr_accessor :password
  attr_accessible :email, :password, :password_confirmation


  validates_confirmation_of :password
  validates_uniqueness_of :email
  validates_presence_of :password, :on => :create
  validates_presence_of :password_confirmation
  validates_presence_of :email

end
