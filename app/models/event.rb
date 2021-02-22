class Event < ApplicationRecord
  belongs_to :user, through: :owner_id
end
