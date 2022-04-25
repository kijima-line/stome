class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :stocks
  has_many :comments

  has_many :mees, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_stocks, through: :likes, source: :stock
  validates :name, presence: true
  def already_liked?(stock)
    likes.exists?(stock_id: stock.id)
  end
end
