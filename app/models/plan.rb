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

  belongs_to :user
  has_many :meals

end
