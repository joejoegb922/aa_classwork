# == Schema Information
#
# Table name: goals
#
#  id         :bigint           not null, primary key
#  details    :string           not null
#  name       :string           not null
#  status     :boolean          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_goals_on_user_id  (user_id)
#
class Goal < ApplicationRecord
  validates_presence_of :name, :details
  validates :status, inclusion: { in: [true, false] }

  belongs_to :user
end
