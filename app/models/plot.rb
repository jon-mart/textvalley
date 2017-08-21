class Plot < ApplicationRecord
	has_many :allocations
	has_many :allocators, through: :allocations, source: :user
	has_many :agents, through: :allocations
	has_many :transations, through: :allocations
end
