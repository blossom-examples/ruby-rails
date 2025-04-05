class Joke < ApplicationRecord
  validates :content, presence: true, length: {minimum: 10, maximum: 500}
  validates :author, presence: true, length: {minimum: 2, maximum: 100}

  def self.random
    order("RANDOM()").first
  end
end
