# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  password_digest :string
#  age             :integer
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image           :string
#

class User < ApplicationRecord
  has_secure_password
	has_many :posts
	has_many :comments
  # Validations -- see the Rails Guide
  validates :email, :presence => true, :uniqueness => true
end
