class Stock < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :mees, dependent: :destroy
  def self.search(search)
    if search != ''
      # .includes(:mees).whereでストックのなかに集約 ORで繋ぎmees.textを検索可能にした
      Stock.includes(:mees).where(['stocks.title LIKE(?) OR mees.text LIKE (?)', "%#{search}%", "%#{search}%"]).references(:mees)
    else
      Stock.where('title LIKE(?)', '%c%')
    end
  end
end
