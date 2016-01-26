class Reservation < ActiveRecord::Base
  belongs_to :room
  has_many :employees
end
