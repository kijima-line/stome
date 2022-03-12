class Mee < ApplicationRecord
  belongs_to :user
  belongs_to :stock
  validates :text, presence: true
  validates :published_at, presence: true
end
