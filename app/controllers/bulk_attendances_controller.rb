class BulkAttendancesController < ApplicationController
  before_action :set_bulk_attendance, only: [:show, :edit, :update, :destroy]

  # GET /bulk_attendances
  # GET /bulk_attendances.json
  def index
    @bulk_attendances = BulkAttendance.all
  end

  # GET /bulk_attendances/1
  # GET /bulk_attendances/1.json
  def show
  end

  # GET /bulk_attendances/new
  def new
    @bulk_attendance = BulkAttendance.new
  end

  # GET /bulk_attendances/1/edit
  def edit
  end

  # POST /bulk_attendances
  # POST /bulk_attendances.json

  def batch_create(bulk)
    members = active_members_full
    here = bulk.attendees
    members.each do |mem|
      tmp = User.find_by(intra: mem.intra)
      if here.include?(mem.intra)
        puts tmp.id
        User.find(tmp.id).attendances.create(title: bulk.title, date: bulk.date, desc: bulk.desc, here: true)
      else
        User.find(tmp.id).attendances.create(title: bulk.title, date: bulk.date, desc: bulk.desc, here: false)
      end
    end
  end

  def create
    @bulk_attendance = BulkAttendance.new(bulk_attendance_params)
    respond_to do |format|
      if @bulk_attendance.save
        batch_create(@bulk_attendance)
        format.html { redirect_to @bulk_attendance, notice: 'Bulk attendance was successfully created.' }
        format.json { render :show, status: :created, location: @bulk_attendance }
      else
        format.html { render :new }
        format.json { render json: @bulk_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bulk_attendances/1
  # PATCH/PUT /bulk_attendances/1.json
  def update
    respond_to do |format|
      if @bulk_attendance.update(bulk_attendance_params)
        format.html { redirect_to @bulk_attendance, notice: 'Bulk attendance was successfully updated.' }
        format.json { render :show, status: :ok, location: @bulk_attendance }
      else
        format.html { render :edit }
        format.json { render json: @bulk_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bulk_attendances/1
  # DELETE /bulk_attendances/1.json
  def destroy
    @bulk_attendance.destroy
    respond_to do |format|
      format.html { redirect_to bulk_attendances_url, notice: 'Bulk attendance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bulk_attendance
      @bulk_attendance = BulkAttendance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bulk_attendance_params
      params.require(:bulk_attendance).permit(:title, :date, { :attendees => [] }, :desc)
    end
end
