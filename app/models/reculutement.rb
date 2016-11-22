class Reculutement < ActiveRecord::Base
  belongs_to :promise
  belongs_to :user

  scope :participations_all, ->(user) {
    joins(promise: :user)
    .select('users.id')
    .where('participation_id = ?', user)
  }
  scope :applicant, -> { where.not(result: false) }

  def self.decide_mountain(params, id)
    # 参加希望者のid
    user = params[:id]
    promise = Promise.find_by(user_id: id)
    a = promise.reculutement.first
    resulut = params[:result]
    a.update(result: true) if resulut == "ok"
    a.update(result: false) if resulut == "no"
  end
end
