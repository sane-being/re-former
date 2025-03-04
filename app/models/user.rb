class User < ApplicationRecord
  validates :username,
    presence: true,
    uniqueness: true,
    length: { in: 8..20 },
    format: { with: /\A[a-zA-Z0-9_]+\z/, message: "Only letters, numbers, and underscores are allowed" }
  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password,
    presence: true,
    length: { minimum: 8 }
end
