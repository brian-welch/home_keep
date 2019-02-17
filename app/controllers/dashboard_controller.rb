  class DashboardController < ApplicationController
  before_action :get_room_count,
                :get_building_count

  def index
    @title = "My Home Keep Dashboard"

    @avg_outside_temp = avg_outside_temp
    @avg_inside_temp = avg_inside_temp

    @total_sqm = total_square_meters

  end

  private

  def get_building_count
    @building_count = @all_buildings.count
  end

  def get_room_count
    @room_count = @all_rooms.count
  end

  def avg_outside_temp
    arr = []
    @all_buildings.each do |x|
      arr << x.outside_temp
    end
    return "#{(arr.reduce(:+) / arr.count).round(1)}"
  end

  def avg_inside_temp
    arr = []
    @all_rooms.each do |x|
      arr << x.temp
    end
    return "#{(arr.reduce(:+) / arr.count).round(1)}"
  end

  def total_square_meters
    arr = []
    @all_rooms.each do |x|
      arr << x.sqm
    end
    return arr.reduce(:+)
  end
end
