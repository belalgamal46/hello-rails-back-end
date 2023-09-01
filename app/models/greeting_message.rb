class GreetingMessage < ApplicationRecord
  validates :message, presence: true
end
