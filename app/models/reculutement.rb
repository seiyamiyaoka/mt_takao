class Reculutement < ActiveRecord::Base
  belongs_to :promise
  belongs_to :participation, class_name: "User", foreign_key: "participation_user_id"
  belongs_to :subscription, class_name: "User", foreign_key: "subscription_user_id"
end
