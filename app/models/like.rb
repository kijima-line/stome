class Like < ApplicationRecord
belongs_to :user   # ユーザー/やってみたい → 1:多
belongs_to :stock   # 投稿/やってみたい    → 1:多

validates_uniqueness_of :stock_id, scope: :user_id 

end
