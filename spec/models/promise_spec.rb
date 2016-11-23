require 'rails_helper'

RSpec.describe Promise, :type => :model do
  describe '#before_limit_time' do
    let(:user) { create(:user) }
    let(:promise) { build(:promise, user_id: user.id) }
    context '締め切り時間が約束時間よりあとの場合' do
      it 'エラーに締め切り日は開始日より後に設定していくださいが含まれる' do
        promise.limit_time = Time.new - 5.days
        promise.valid?
        expect(promise.errors[:limit_time]).to include("締め切り日は開始日より後に設定していください")
      end
    end
    context '締切日が約束時間より前の場合' do
      it 'falseになる' do
        promise.valid?
        expect(promise.errors.any?).to be_falsy
      end
    end
  end

  describe '#self.my_build_promise' do
    let!(:user) { create(:user) }
    let!(:promise) { create(:promise, user_id: user.id) }
    it '自分が作成したpromiseを取得できる' do
      my_build_promise = Promise.my_build_promise(user)
      expect(my_build_promise.first.user_id).to eq user.id
    end
  end

  describe '#self.your_build_promise' do
    let!(:user) { create(:user) }
    let!(:promise) { create(:promise, user_id: user.id) }
    let!(:join_user) { create(:user) }
    let!(:reculutement) { create(:reculutement, user_id: join_user.id, promise_id: promise.id) }
    it '自分が参加したイベントが存在する' do
      your_promise = Promise.your_build_promise(join_user)
      expect(your_promise.count).to eq 1
    end
  end

  describe '#self.decide_promise' do
  end

  describe '#self.my_promises' do
  end

  describe '#self.my' do
  end

  describe '#self.your' do
  end

  describe '#self.cheeeeeck' do
  end

  describe '#self.check_promise' do
  end

end
