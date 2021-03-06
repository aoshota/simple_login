# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
	has_secure_password

	validates :name, presence: true, length: { maximum: 50 }
	validates :password, presence: true, length: { minimum: 8 }
end
