class Profile < ApplicationRecord
  belongs_to :user

  validates :age,             present: false
  validates :sex,             present: false
  validates :height,          present: false
  validates :weight,          present: false
  validates :activity_amount, present: false

end
