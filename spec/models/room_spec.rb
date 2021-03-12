require 'rails_helper'

RSpec.describe Room, type: :model do
  describe 'チャットルーム登録はできるか' do
    before do
      @room = FactoryBot.build(:room)
    end

    it 'nameを入力すると登録ができる' do
      expect(@room).to be_valid
    end

    it 'nameが空では登録できないこと' do
      @room.name = ''
      @room.valid?
      expect(@room.errors.full_messages).to include("Name can't be blank")
    end

  end
end
