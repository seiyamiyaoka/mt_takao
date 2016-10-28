class Promise < ActiveRecord::Base
  belongs_to :user
  has_many :reculutement
end
