class Contact < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_presence_of :name, :email, :comment
  validates_format_of :email, with: EMAIL_REGEX

end
