require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    it 'nameが空では登録できない' do
      binding.pry

      @user.name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include '名前 が入力されていません。'
    end

    it 'emailが空では登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include 'メールアドレス が入力されていません。'
    end
    it 'emailに@が含まれていない場合登録できない' do
      @user.email = 'furima.com'
      @user.valid?
      expect(@user.errors.full_messages).to include('メールアドレス は有効でありません。')
    end

    it 'passwordが空では登録できない' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード が入力されていません。')
    end
    it 'password_confirmationが空では登録できない' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード確認 が内容とあっていません。')
    end
  end
end
