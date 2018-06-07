class TeammakingsController < ApplicationController
  before_action :set_teammaking, only: [:show, :edit, :update, :destroy]
  before_action :is_admin
  # GET /teammakings
  # GET /teammakings.json
  def index
    @teammakings = Teammaking.all
  end

  # GET /teammakings/1
  # GET /teammakings/1.json
  def show
  end

  # GET /teammakings/new
  def new
    @teammaking = Teammaking.new
  end

  # GET /teammakings/1/edit
  def edit
  end

  # POST /teammakings
  # POST /teammakings.json
  def create
    @teammaking = Teammaking.new(teammaking_params)

    respond_to do |format|
      if @teammaking.save
        format.html { redirect_to @teammaking, notice: 'Teammaking was successfully created.' }
        format.json { render :show, status: :created, location: @teammaking }
      else
        format.html { render :new }
        format.json { render json: @teammaking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teammakings/1
  # PATCH/PUT /teammakings/1.json
  def update
    respond_to do |format|
      if @teammaking.update(teammaking_params)
        format.html { redirect_to @teammaking, notice: 'Teammaking was successfully updated.' }
        format.json { render :show, status: :ok, location: @teammaking }
      else
        format.html { render :edit }
        format.json { render json: @teammaking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teammakings/1
  # DELETE /teammakings/1.json
  def destroy
    @teammaking.destroy
    respond_to do |format|
      format.html { redirect_to teammakings_url, notice: 'Teammaking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teammaking
      @teammaking = Teammaking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teammaking_params
      params.require(:teammaking).permit(:t1q1, :t1q2, :t1q3, :t1q4, :t2q1, :t2q2, :t2q3, :t2q4, :t2q5, :t2q6, :t3q1, :t3q2, :t3q3, :t3q4, :t3q5, :t5q1, :t5q2, :t6q1, :t6q2, :t6q3, :t6q4, :t6q5, :t6q6)
    end
end
