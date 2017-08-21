class User < ApplicationRecord
	has_many :agents
	has_many :allocations
	has_many :transations
	has_many :plots, through: :allocations
end
