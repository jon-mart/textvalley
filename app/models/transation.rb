class Transation < ApplicationRecord
	belongs_to :user
	belongs_to  :allocation
end
