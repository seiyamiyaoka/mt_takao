class Reculutement < ActiveRecord::Base
  belongs_to :promise
  belongs_to :participation, class_name: User
  
  scope :participations_all, ->(user) {
    joins(promise: :user)
    .select('users.id')
    .where('participation_id = ?', user)
  }
end
