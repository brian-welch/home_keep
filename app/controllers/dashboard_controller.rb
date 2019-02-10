class DashboardController < ApplicationController

  def index
    @title = "My Home Keep Dashboard"
    @user = current_user
  end

  private

end
