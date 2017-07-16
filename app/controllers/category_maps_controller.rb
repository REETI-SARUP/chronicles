class CategoryMapsController < ApplicationController
  before_action :set_category_map, only: [:show, :edit, :update, :destroy]

  # GET /category_maps
  # GET /category_maps.json
  def index
    @category_maps = CategoryMap.all
  end

  # GET /category_maps/1
  # GET /category_maps/1.json
  def show
  end

  # GET /category_maps/new
  def new
    @category_map = CategoryMap.new
    @category_map.User = current_user
  end

  # GET /category_maps/1/edit
  def edit
  end

  # POST /category_maps
  # POST /category_maps.json
  def create
    @category_map = CategoryMap.new(category_map_params)
    puts params
    category_map = params["category_map"]
    category = category_map["category"].to_i
    puts category.class
    puts CategoryMap::DIARY.class
    respond_to do |format|
      if @category_map.save
        format.html do 
          if category == CategoryMap::DIARY
            puts "sdgsd"
            redirect_to '/diaries/new'
          elsif category == CategoryMap::TRAVEL
              puts "sdgsd"
              redirect_to '/travel_journals/new'
          elsif category == CategoryMap::MISC
              puts "sdgsd"
              redirect_to '/miscs/new'
          end
        end
        # format.html { redirect_to '/diaries/new'}
        format.json { render :show, status: :created, location: @category_map }
      else
        format.html { render :new }
        format.json { render json: @category_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_maps/1
  # PATCH/PUT /category_maps/1.json
  def update
    respond_to do |format|
      if @category_map.update(category_map_params)
        format.html { redirect_to @category_map, notice: 'Category map was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_map }
      else
        format.html { render :edit }
        format.json { render json: @category_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_maps/1
  # DELETE /category_maps/1.json
  def destroy
    @category_map.destroy
    respond_to do |format|
      format.html { redirect_to category_maps_url, notice: 'Category map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_map
      @category_map = CategoryMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_map_params
      params.require(:category_map).permit(:User_id, :category)
    end
end
