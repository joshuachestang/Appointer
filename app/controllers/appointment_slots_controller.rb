class AppointmentSlotsController < ApplicationController
  # GET /appointment_slots
  # GET /appointment_slots.json
  def index
    @appointment_slots = AppointmentSlot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appointment_slots }
    end
  end

  # GET /appointment_slots/1
  # GET /appointment_slots/1.json
  def show
    @appointment_slot = AppointmentSlot.find(params[:id])
    @appointment_slot_type = AppointmentType.find_by_id(@appointment_slot.appointment_type_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @appointment_slot }
    end
  end

  # GET /appointment_slots/new
  # GET /appointment_slots/new.json
  def new
    @business = Business.find(params[:business_id])
    @appointment_slot = AppointmentSlot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @appointment_slot }
    end
  end

  # GET /appointment_slots/1/edit
  def edit
    @appointment_slot = AppointmentSlot.find(params[:id])
  end

  # POST /appointment_slots
  # POST /appointment_slots.json
  def create
    @appointment_slot = current_user.appointment_slots.build(params[:appointment_slot])
    @appointment_slot.business_id = params[:business_id]

    respond_to do |format|
      if @appointment_slot.save
        format.html { redirect_to @appointment_slot.business, notice: 'appointment_slot was successfully created.' }
        format.json { render json: @appointment_slot, status: :created, location: @appointment_slot }
      else
        format.html { render action: "new" }
        format.json { render json: @appointment_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /appointment_slots/1
  # PUT /appointment_slots/1.json
  def update
    @appointment_slot = AppointmentSlot.find(params[:id])

    respond_to do |format|
      if @appointment_slot.update_attributes(params[:appointment_slot])
        format.html { redirect_to @appointment_slot, notice: 'Appointment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @appointment_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_slots/1
  # DELETE /appointment_slots/1.json
  def destroy
    @appointment_slot = AppointmentSlot.find(params[:id])
    @appointment_slot.destroy

    respond_to do |format|
      format.html { redirect_to business_appointment_slots_url }
      format.json { head :no_content }
    end
  end
end
