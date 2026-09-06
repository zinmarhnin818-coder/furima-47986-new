require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it 'nicknameが空では登録できない' do
      user = User.new(
        nickname: '',
        email: 'test@example.com',
        password: 'abc123',
        password_confirmation: 'abc123',
        last_name: '山田',
        first_name: '太郎',
        last_name_kana: 'ヤマダ',
        first_name_kana: 'タロウ',
        birth_date: Date.new(1990, 1, 1)
      )

      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end

    it 'emailが空では登録できない' do
      user = User.new(
        nickname: 'tester',
        email: '',
        password: 'abc123',
        password_confirmation: 'abc123',
        last_name: '山田',
        first_name: '太郎',
        last_name_kana: 'ヤマダ',
        first_name_kana: 'タロウ',
        birth_date: Date.new(1990, 1, 1)
      )

      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
  end
end
