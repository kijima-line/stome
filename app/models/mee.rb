class Mee < ApplicationRecord
  belongs_to :user
  belongs_to :stock
  validates :text, presence: true
  validates :published_at, presence: true
  # def self.search(search)
  #   if search != ""
  #     Mee.where('text LIKE(?))',"%#{search}%")
  #   else
  #     Mee.all
  #   end
  # end
end
