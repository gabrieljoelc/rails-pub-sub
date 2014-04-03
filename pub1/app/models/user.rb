class User < ActiveRecord::Base
  include Promiscuous::Publisher

  attr_accessible :email, :name

  publish :name, :email
end
