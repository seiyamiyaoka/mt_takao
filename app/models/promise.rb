class Promise < ActiveRecord::Base
  belongs_to :user
  has_many :reculutement
  validates :title, presence: true
  validates :content, presence: true
  validate :before_limit_time

  def before_limit_time
    if limit_time > promise_time
      errors.add(:limit_time, "締め切り日は開始日より後に設定していください")
    end
  end

  def self.my_build_promise(user)
    promises = Promise.where(user_id: user.id)
  end

  def self.your_build_promise(user)
    reculutements = user.reculutements
    promises = reculutements.map { |reculutement| reculutement.promise }
  end

  def self.decide_promise(user)
      promises = user.promises
      promises = promises.joins(:reculutement).where("reculutements.result = true")
  end

  def self.my_promises(user)
    reculutements = user.reculutements.where(result: true)
    my_promises = reculutements.map { |reculutement| reculutement.promise }
  end

  def self.my(params)
    params == nil || params == "my"
  end

  def self.your(params)
    params == "your"
  end

  def self.cheeeeeck(params)
    params == "cheeeeeck"
  end

  def self.check_promise(params = nil, user)
    if my(params)
      my_build_promise(user)
    elsif your(params)
      your_build_promise(user)
    elsif cheeeeeck(params)
      decide_promise(user)
    end
  end
end
