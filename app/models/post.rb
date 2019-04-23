# == Schema Information
#
# Table name: posts
#
#  id         :bigint(8)        not null, primary key
#  content    :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	default_scope -> { order(created_at: :desc) }
end
