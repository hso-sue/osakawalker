require 'rails_helper'

RSpec.describe Shop, type: :model do
  before do
    @shop = FactoryBot.build(:shop)
  end

  describe 'ショップの投稿' do
    context '新規投稿できる場合' do
      it "shop_address以外の項目で値があれば投稿できる" do
        @shop.shop_address = ''
        @shop.shop_name = Faker::Lorem.characters(number:20)
        expect(@shop).to be_valid
      end
    end
    context '新規作成できない場合' do
      it "imegesが空では作成できない" do
        @shop.images = nil
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Images can't be blank")
      end
      it "shop_genre_idが空では作成できない" do
        @shop.shop_genre_id = 1
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Shop genre can't be blank")
      end
      it "shop_nameが空では作成できない" do
        @shop.shop_name = ''
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Shop name can't be blank")
      end
      it "shop_nameが30文字以上であれば作成できない" do
        @shop.shop_name = Faker::Lorem.characters(number:31)
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Shop name is too long (maximum is 30 characters)")
      end
      it "introductionが空では作成できない" do
        @shop.introduction = ''
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Introduction can't be blank")
      end
      it "introductionが500文字以上であれば作成できない" do
        @shop.introduction = Faker::Lorem.characters(number:301)
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Introduction is too long (maximum is 300 characters)")
      end
      it "prefecture_idが空では作成できない" do
        @shop.prefecture_id = 1
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Prefecture can't be blank")
      end
      it "shop_city_idが空では作成できない" do
        @shop.shop_city_id = 1
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Shop city can't be blank")
      end
      it "shop_addressが40文字以上であれば作成できない" do
        @shop.shop_address = Faker::Lorem.characters(number:41)
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Shop address is too long (maximum is 40 characters)")
      end
      it "user_idが空では作成できない" do
        @shop.user = nil
        @shop.valid?
        expect(@shop.errors.full_messages).to include("User must exist")
      end
    end
  end
end

