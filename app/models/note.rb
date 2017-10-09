class Note < ActiveRecord::Base
  validates :date, presence: true
  belongs_to :user
end
