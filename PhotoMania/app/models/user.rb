class User < ActiveRecord::Base
  attr_accessible :email, :password
validates_presence_of :email
validates_presence_of :password
validates_uniqueness_of :email
has_many :albums
end
