class CategoryMapping < ActiveRecord::Base
  belongs_to :user

  class category
  	DIARY = 0
  	TRAVEL_JOURNAL = 1
  	MISC = 2
  end

end
