class Hunt < ActiveRecord::Base
  validates :name, presence: true
end
