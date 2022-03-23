class Stock < ApplicationRecord
  
  validates :title, presence: true
  belongs_to :user
  has_many :likes,dependent: :destroy
  has_many :mees, dependent: :destroy
  def self.search(search)
    if search != ""
      Stock.where('title LIKE(?)', "%#{search}%")
    else
      Stock.where('title LIKE(?)', "%c%")
    end
  end
end
