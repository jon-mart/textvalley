class Agent < ApplicationRecord
	belongs_to :onboarder, class_name: 'User', foreign_key: 'user_id'
	has_many :allocations
	has_many :plots ,through: :allocations
	has_many :transations, through: :allocations
end
