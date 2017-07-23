class LayoutController < ApplicationController
  layout 'logined'
  before_filter :set_new

  def set_new
    @category_map = CategoryMap.new
  end
end
