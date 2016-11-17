class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :promises
  has_many :reculutements

  mount_uploader :image, ProfileImageUploader

  def self.get_participations(user)
    promises_id = Promise.where(user_id: user.id).pluck(:id)
    reculutements_user_id = Reculutement.where(promise_id: promises_id).pluck(:user_id)
    User.find(reculutements_user_id)
  end
end
