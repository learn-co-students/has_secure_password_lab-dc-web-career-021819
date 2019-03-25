class User < ActiveRecord::Base #ApplicationRecord
  has_secure_password
end
