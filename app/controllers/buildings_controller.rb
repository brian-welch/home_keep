class BuildingsController < ApplicationController

  def show
    @building = Building.find(params[:id])
    @outside_temp_array = outside_temp_by_day
    @outside_hum_array = outside_hum_by_day
    # byebug
  end

  private

  def outside_temp_by_day
    ClimateLog.where(building: @building, room: @building.rooms.first).map(&:outside_temp)
  end

  def outside_hum_by_day
    ClimateLog.where(building: @building, room: @building.rooms.first).map(&:outside_humidity)
  end

end

