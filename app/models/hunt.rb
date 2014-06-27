class Hunt < ActiveRecord::Base
  has_many :hunters

  validates :name, presence: true
end
