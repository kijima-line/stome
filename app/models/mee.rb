class Mee < ApplicationRecord
  belongs_to :user
  belongs_to :stock,dependent: :destroy
end
