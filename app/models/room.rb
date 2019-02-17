class Room < ApplicationRecord
  belongs_to :building
  belongs_to :ventilation_type
  has_many :climate_logs, dependent: :destroy
end
