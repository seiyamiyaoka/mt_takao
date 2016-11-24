class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :promises
  has_many :reculutements

  mount_uploader :image, ProfileImageUploader

  def self.get_participations(user)
    promises_id = Promise.where(user_id: user.id).pluck(:id)
    reculutements_user_id = Reculutement.where(promise_id: promises_id).pluck(:user_id)
    User.find(reculutements_user_id)
  end

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.find_by(email: auth.info.email)

    unless user
      user = User.new(
          provider:  auth.provider,
          uid:       auth.uid,
          email:     auth.info.email ||= "#{auth.uid}-#{auth.provider}@example.com",
          image_url: auth.info.image,
          gender:    auth.extra.raw_info.gender,
          password:  Devise.friendly_token[0, 20]
      )

      user.save(validate: false)
    end
    user
  end

  def already_joined_promise(promise)
    reculutements.where(promise_id: promise.id)
  end

  def joined?(promise)
    already_joined_promise(promise).present?
  end
end
