# == Schema Information
#
# Table name: meals
#
#  id         :integer          not null, primary key
#  name       :string
#  image      :string
#  created_by :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Meal < ApplicationRecord

  validates :name, 
  presence: true

  has_many :favorites, :dependent => :destroy
  has_many :ingredients, :dependent => :nullify
  has_many :plans, :dependent => :nullify

end
