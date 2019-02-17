class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!,
                :get_all_buildings,
                :get_all_rooms,
                :get_user

  def after_sign_in_path_for(resource_or_scope)
    my_acs_path
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  private

  def get_all_buildings
    @all_buildings = Building.where(user: current_user)
  end

  def get_all_rooms
    @all_rooms = Room.where(building: @all_buildings)
  end

  def get_user
    @user = current_user
  end

end
