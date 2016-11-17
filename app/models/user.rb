class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :promises
  has_many :participations, class_name: User, foreign_key: 'participation_id'

  mount_uploader :image, ProfileImageUploader

  def self.get_participations(user)
    promises_id = Promise.where(user_id: user.id).pluck(:id)
    reculutements_participation_id = Reculutement.where(promise_id: promises_id).where.not(result: false).pluck(:participation_id)
    User.find(reculutements_participation_id)
  end
end
