class Employee < ActiveRecord::Base

  belongs_to :business
  has_many :schedules, dependent: :destroy

end
