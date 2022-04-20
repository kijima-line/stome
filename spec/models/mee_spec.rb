require 'rails_helper'
RSpec.describe Mee, type: :model do
  before do
    @mee = FactoryBot.build(:mee)
  end

  describe 'mee登録' do
    it 'ルーティンが空では登録できない' do
      @mee.text = ''
      @mee.valid?
      expect(@mee.errors.full_messages).to include 'Textを入力してください'
    end
  end
end

#binding.pry