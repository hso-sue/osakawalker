require 'rails_helper'

RSpec.describe Shop, type: :model do
  before do
    @evaluation_comment = FactoryBot.build(:evaluation_comment)
  end

  describe 'ショップの投稿' do
    context '新規クチコミが投稿できる場合' do
      it "titleとrateで入力があれば投稿できる" do
        @evaluation_comment.content = ''
        expect(@evaluation_comment).to be_valid
      end
    end
    context '新規クチコミが投稿できない場合' do
      it "titleが空では作成できない" do
        @evaluation_comment.title = ''
        @evaluation_comment.valid?
        expect(@evaluation_comment.errors.full_messages).to include("Title can't be blank")
      end
      it "titleが30文字以上であれば投稿できない" do
        @evaluation_comment.title = Faker::Lorem.characters(number:31)
        @evaluation_comment.valid?
        expect(@evaluation_comment.errors.full_messages).to include("Title is too long (maximum is 30 characters)")
      end
      it "contentが300文字以上であれば投稿できない" do
        @evaluation_comment.content = Faker::Lorem.characters(number:301)
        @evaluation_comment.valid?
        expect(@evaluation_comment.errors.full_messages).to include("Content is too long (maximum is 300 characters)")
      end
      it "rateが0では投稿できない" do
        @evaluation_comment.rate = 0
        @evaluation_comment.valid?
        expect(@evaluation_comment.errors.full_messages).to include("Rate 最低でも0.5以上の評価が必要です")
      end
    end
  end
end