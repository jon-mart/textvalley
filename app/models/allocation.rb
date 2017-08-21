class Allocation < ApplicationRecord
	belongs_to :user
	belongs_to :agent
	belongs_to :plot
	has_many :transations
	# belongs_to :allocator, :class_name => :user, :foreign_key => 'user_id'
end
