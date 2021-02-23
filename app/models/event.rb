class Event < ApplicationRecord
  # belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  belongs_to :user
end
