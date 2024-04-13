class User < ApplicationRecord
  include ActiveModel::SecurePassword
  has_secure_password
  # has_secure_password :recovery_password, validations: true

  attr_accessor :password_digest


  validates :email, presence: true

  validates_format_of :email,  with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid email address"
  validates :password, presence: true
  #validates :password_confirmation, presence: true
end
