class User < ApplicationRecord
	has_secure_password
	has_many :dogs
	has_many :dog_critiques
	has_many :user_critiques
end
