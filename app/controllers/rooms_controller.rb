class RoomsController < ApplicationController

  def show
    @room = Room.find(params[:id])
    @building = Building.find(params[:building_id])
    @inside_temp_array = inside_temp_by_day
    @inside_hum_array = inside_hum_by_day

    # byebug
  end

  private

  def inside_temp_by_day
    ClimateLog.where(room: @room).map(&:room_temp)
  end

  def inside_hum_by_day
    ClimateLog.where(room: @room).map(&:room_humidity)
  end

end
