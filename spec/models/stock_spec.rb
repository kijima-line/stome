require 'rails_helper'

RSpec.describe Stock, type: :model do
  before do
    @stock = FactoryBot.build(:stock)
  end

  describe '投稿の保存' do
    context '投稿ができる場合' do
      it 'タイトルが投稿できる場合' do
        expect(@stock).to be_valid
      end
    end
    context '投稿ができない場合' do
    
      it 'ユーザーが紐付いていなければ投稿できない' do
        @stock.user = nil
        @stock.valid?
        expect(@stock.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
