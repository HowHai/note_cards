class NoteCardsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_note_card, only: [:show, :edit, :update, :destroy, :vote]

  # GET /note_cards
  # GET /note_cards.json
  def index
    @note_cards = NoteCard.all
  end

  # GET /note_cards/1
  # GET /note_cards/1.json
  def show
  end

  # GET /note_cards/new
  def new
    @note_card = NoteCard.new
  end

  # GET /note_cards/1/edit
  def edit
  end

  # POST /note_cards
  # POST /note_cards.json
  def create
    @note_card = NoteCard.new(note_card_params)
    @note_card.user = current_user

    respond_to do |format|
      if @note_card.save
        format.html { redirect_to @note_card, notice: 'Note card was successfully created.' }
        format.json { render :show, status: :created, location: @note_card }
      else
        format.html { render :new }
        format.json { render json: @note_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /note_cards/1
  # PATCH/PUT /note_cards/1.json
  def update
    respond_to do |format|
      if @note_card.update(note_card_params)
        format.html { redirect_to @note_card, notice: 'Note card was successfully updated.' }
        format.json { render :show, status: :ok, location: @note_card }
      else
        format.html { render :edit }
        format.json { render json: @note_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /note_cards/1
  # DELETE /note_cards/1.json
  def destroy
    @note_card.destroy
    respond_to do |format|
      format.html { redirect_to note_cards_url, notice: 'Note card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @note_card.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note_card
      @note_card = NoteCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_card_params
      params.require(:note_card).permit(:title, :user_id)
    end
end
