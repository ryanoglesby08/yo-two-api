class VoiceMessage < ActiveRecord::Base
  validates :location, presence: true, uniqueness: true
  validates :from, presence: true
  validates :to, presence: true
end
