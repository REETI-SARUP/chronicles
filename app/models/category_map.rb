class CategoryMap < ActiveRecord::Base
  belongs_to :User
	DIARY = 0
	TRAVEL = 1
	MISC = 2
end
