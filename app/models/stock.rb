class Stock < ApplicationRecord
  
  validates :title, presence: true
  belongs_to :user
  has_many :likes,dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :mees, dependent: :destroy
  def self.search(search)
    if search != ""
      Stock.includes(:mees).where(['stocks.title LIKE(?) OR mees.text LIKE (?)' ,"%#{search}%", "%#{search}%"]).references(:mees)

      # Micropost.includes(:comments).where(['microposts.title LIKE ? OR microposts.content LIKE ? OR comments.content LIKE ?',
      #   "%#{search}%", "%#{search}%", "%#{search}%"]).references(:comments)
    else
      Stock.where('title LIKE(?)', "%c%")
    end
  end
end
