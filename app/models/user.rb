class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :promises
  has_many :participation_users, class_name: 'User', foreign_key: 'participation_user_id'
  has_many :subscription_users, class_name: 'User', foreign_key: 'subscription_user_id'
  # 中間テーブル
  has_many :participations, class_name: "Reculutements"
  has_many :subscriptions, class_name: "Reculutements"
end
