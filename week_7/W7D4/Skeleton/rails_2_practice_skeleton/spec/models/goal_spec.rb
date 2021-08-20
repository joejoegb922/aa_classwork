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
require 'rails_helper'

RSpec.describe Goal, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:details) }
  it { should allow_value(true, false).for(:status) }
  it { should belong_to(:user) }
end
