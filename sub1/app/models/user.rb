class User < ActiveRecord::Base
  include Promiscuous::Subscriber

  attr_accessible :email, :name

  subscribe :name, :email

  after_create { Rails.logger.info "Hi #{name}!" }
end
