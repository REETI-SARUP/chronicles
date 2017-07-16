class TravelJournalsController < ApplicationController
  before_action :set_travel_journal, only: [:show, :edit, :update, :destroy]

  # GET /travel_journals
  # GET /travel_journals.json
  def index
    @travel_journals = TravelJournal.all
  end

  # GET /travel_journals/1
  # GET /travel_journals/1.json
  def show
  end

  # GET /travel_journals/new
  def new
    @travel_journal = TravelJournal.new
  end

  # GET /travel_journals/1/edit
  def edit
  end

  # POST /travel_journals
  # POST /travel_journals.json
  def create
    @travel_journal = TravelJournal.new(travel_journal_params)

    respond_to do |format|
      if @travel_journal.save
        format.html { redirect_to @travel_journal, notice: 'Travel journal was successfully created.' }
        format.json { render :show, status: :created, location: @travel_journal }
      else
        format.html { render :new }
        format.json { render json: @travel_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_journals/1
  # PATCH/PUT /travel_journals/1.json
  def update
    respond_to do |format|
      if @travel_journal.update(travel_journal_params)
        format.html { redirect_to @travel_journal, notice: 'Travel journal was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_journal }
      else
        format.html { render :edit }
        format.json { render json: @travel_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_journals/1
  # DELETE /travel_journals/1.json
  def destroy
    @travel_journal.destroy
    respond_to do |format|
      format.html { redirect_to travel_journals_url, notice: 'Travel journal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_journal
      @travel_journal = TravelJournal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_journal_params
      params.require(:travel_journal).permit(:user_id, :title, :description)
    end
end
