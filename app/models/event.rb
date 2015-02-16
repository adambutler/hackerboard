class Event < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name

  has_many :votes
end
