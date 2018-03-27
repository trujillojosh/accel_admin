class AllHandsController < ApplicationController
  before_action :set_all_hand, only: [:show, :edit, :update, :destroy]
  before_action :is_admin
  # GET /all_hands
  # GET /all_hands.json
  def index
    @all_hands = AllHand.all
  end

  # GET /all_hands/1
  # GET /all_hands/1.json
  def show
  end

  # GET /all_hands/new
  def new
    @all_hand = AllHand.new
  end

  # GET /all_hands/1/edit
  def edit
  end

  # POST /all_hands
  # POST /all_hands.json
  def create
    @all_hand = AllHand.new(all_hand_params)

    respond_to do |format|
      if @all_hand.save
        format.html { redirect_to @all_hand, notice: 'All hand was successfully created.' }
        format.json { render :show, status: :created, location: @all_hand }
      else
        format.html { render :new }
        format.json { render json: @all_hand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /all_hands/1
  # PATCH/PUT /all_hands/1.json
  def update
    respond_to do |format|
      if @all_hand.update(all_hand_params)
        format.html { redirect_to @all_hand, notice: 'All hand was successfully updated.' }
        format.json { render :show, status: :ok, location: @all_hand }
      else
        format.html { render :edit }
        format.json { render json: @all_hand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /all_hands/1
  # DELETE /all_hands/1.json
  def destroy
    @all_hand.destroy
    respond_to do |format|
      format.html { redirect_to all_hands_url, notice: 'All hand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_all_hand
      @all_hand = AllHand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def all_hand_params
      params.require(:all_hand).permit(:team_id, :date, :b_kpi, :t_kpi, :help, :blockers, :other)
    end
end
