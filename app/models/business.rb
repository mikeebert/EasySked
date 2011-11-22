class Business < ActiveRecord::Base
  has_secure_password
  has_many :employees, dependent: :destroy
end
