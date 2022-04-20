require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    it 'nameが空では登録できない' do
      @user.name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include '名前を入力してください'
    end

    it 'emailが空では登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include 'メールアドレスを入力してください'
    end
    it 'emailに@が含まれていない場合登録できない' do
      @user.email = 'furima.com'
      @user.valid?
      expect(@user.errors.full_messages).to include('メールアドレスは不正な値です')
    end

    it 'passwordが空では登録できない' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード確認とパスワードの入力が一致しません')
    end
    it 'password_confirmationが空では登録できない' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード確認とパスワードの入力が一致しません')
    end
  end
end