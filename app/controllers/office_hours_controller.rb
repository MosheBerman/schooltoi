class OfficeHoursController < ApplicationController
  # GET /office_hours
  # GET /office_hours.json
  def index
    @office_hours = OfficeHour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @office_hours }
    end
  end

  # GET /office_hours/1
  # GET /office_hours/1.json
  def show
    @office_hour = OfficeHour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @office_hour }
    end
  end

  # GET /office_hours/new
  # GET /office_hours/new.json
  def new
    @office_hour = OfficeHour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @office_hour }
    end
  end

  # GET /office_hours/1/edit
  def edit
    @office_hour = OfficeHour.find(params[:id])
  end

  # POST /office_hours
  # POST /office_hours.json
  def create
    @office_hour = OfficeHour.new(params[:office_hour])

    respond_to do |format|
      if @office_hour.save
        format.html { redirect_to @office_hour, notice: 'Office hour was successfully created.' }
        format.json { render json: @office_hour, status: :created, location: @office_hour }
      else
        format.html { render action: "new" }
        format.json { render json: @office_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /office_hours/1
  # PUT /office_hours/1.json
  def update
    @office_hour = OfficeHour.find(params[:id])

    respond_to do |format|
      if @office_hour.update_attributes(params[:office_hour])
        format.html { redirect_to @office_hour, notice: 'Office hour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @office_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /office_hours/1
  # DELETE /office_hours/1.json
  def destroy
    @office_hour = OfficeHour.find(params[:id])
    @office_hour.destroy

    respond_to do |format|
      format.html { redirect_to office_hours_url }
      format.json { head :no_content }
    end
  end
end
