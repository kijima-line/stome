class Stock < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :mees
end
