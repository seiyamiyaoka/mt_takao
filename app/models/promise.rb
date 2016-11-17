class Promise < ActiveRecord::Base
  belongs_to :user
  has_many :reculutement
  validate :before_limit_time

  def before_limit_time
    unless limit_time > promise_time
      errors.add(:limit_time, "締め切り日は開始日より後に設定していください")
    end
  end
end
