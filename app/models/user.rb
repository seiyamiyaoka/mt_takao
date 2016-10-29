class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :promises
  has_many :participations, class_name: User, foreign_key: 'participation_id'

  def self.get_participations(user)
    reculutements = Reculutement.participations_all(user)
    reculutement_users = reculutements.map(&:id)
    user = self.find(reculutement_users)
  end
end
