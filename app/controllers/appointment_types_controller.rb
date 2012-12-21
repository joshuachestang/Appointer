class AppointmentTypesController < ApplicationController
  # GET /appointment_types
  # GET /appointment_types.json
  def index
    @business = Business.find(params[:business_id])
    @appointment_types = @business.appointment_types.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appointment_types }
    end
  end

  # GET /appointment_types/1
  # GET /appointment_types/1.json
  def show
    @appointment_type = AppointmentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @appointment_type }
    end
  end

  # GET /appointment_types/new
  # GET /appointment_types/new.json
  def new
    @business = Business.find(params[:business_id])
    @appointment_type = AppointmentType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @appointment_type }
    end
  end

  # GET /appointment_types/1/edit
  def edit
    @appointment_type = AppointmentType.find(params[:id])
  end

  # POST /appointment_types
  # POST /appointment_types.json
  def create
    @appointment_type = AppointmentType.new(params[:appointment_type])
    @appointment_type.business_id = params[:business_id]

    respond_to do |format|
      if @appointment_type.save
        format.html { redirect_to @appointment_type.business, notice: 'appointment type was successfully created.' }
        format.json { render json: @appointment_type.business, status: :created, location: @appointment_type }
      else
        format.html { render action: "new" }
        format.json { render json: @appointment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /appointment_types/1
  # PUT /appointment_types/1.json
  def update
    @appointment_type = AppointmentType.find(params[:id])

    respond_to do |format|
      if @appointment_type.update_attributes(params[:appointment_type])
        format.html { redirect_to @appointment_type, notice: 'appointment type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @appointment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_types/1
  # DELETE /appointment_types/1.json
  def destroy
    @appointment_type = AppointmentType.find(params[:id])
    @appointment_type.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
end
