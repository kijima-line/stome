class Stock < ApplicationRecord
  
  validates :title, presence: true
  belongs_to :user
  has_many :mees, dependent: :destroy
end
