# == Schema Information
#
# Table name: plans
#
#  id         :integer          not null, primary key
#  meal_id    :integer
#  meal_time  :string
#  meal_day   :string
#  week_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Plan < ApplicationRecord

  validates :meal_id, :meal_time, :meal_day, :week_id, :user_id, presence: true

  belongs_to :user
  has_many :meals

end
