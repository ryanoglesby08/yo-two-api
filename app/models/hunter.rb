class Hunter < ActiveRecord::Base
  belongs_to :hunt

  validates :start_time, presence: true
end
