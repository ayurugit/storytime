class Note < ActiveRecord::Base
  validates :date, presence: true
end
