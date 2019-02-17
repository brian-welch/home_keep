class Building < ApplicationRecord
  belongs_to :user
  belongs_to :building_type
  has_many :rooms, dependent: :destroy
  has_many :climate_logs
  private
end
