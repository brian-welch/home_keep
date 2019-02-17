class ClimateLog < ApplicationRecord
  belongs_to :building
  belongs_to :room
end
