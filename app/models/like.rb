class Like < ApplicationRecord
  belongs_to :user
  belongs_to :stock

  
  validates_uniqueness_of :stock_id, scope: :user_id 
  #一回上のコードは下の書き方と一緒　
  validates :user_id, uniqueness: { scope: :stock_id}
  #一つのユーザーは同じ投稿に対して一回しかできませんというバリデーション
end
