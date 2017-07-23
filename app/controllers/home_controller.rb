class HomeController < LayoutController
	before_action :authenticate_user!, only: [:index]
  def index
  	@category_map = CategoryMap.new
  	@diaries = Diary.all
  	@misc = Misc.all
  end

  def about
  	if user_signed_in?
  		return redirect_to '/home/index'
  	end
  end

end
