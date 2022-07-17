require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '新規投稿' do
    context '新規投稿できるとき' do
      it 'すべての値が正しく入力されていれば投稿できる' do
        expect(@post).to be_valid
      end
      it '画像が選択されていなくても投稿できる' do
        @post.image = nil
        expect(@post).to be_valid
      end
    end
    context '新規投稿できないとき' do
      it 'テキストが空では投稿できない' do
        @post.text = ''
        @post.valid?
        expect(@post.errors.full_messages).to include('テキストを入力してください') 
      end
      it '気持ちに「---」が選択されていると投稿できない' do
        @post.feeling_id = 0
        @post.valid?
        expect(@post.errors.full_messages).to include('気持ちを選択してください') 
      end
      it '色に「---」が選択されていると投稿できない' do
        @post.color_id = 0
        @post.valid?
        expect(@post.errors.full_messages).to include('色を選択してください') 
      end     
      it 'ユーザーが紐付いていないと投稿できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('Userを入力してください') 
      end
    end
  end
end
