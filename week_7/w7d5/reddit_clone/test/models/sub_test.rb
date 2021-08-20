# == Schema Information
#
# Table name: subs
#
#  id           :bigint           not null, primary key
#  description  :text             not null
#  title        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  moderator_id :integer          not null
#
# Indexes
#
#  index_subs_on_moderator_id  (moderator_id)
#  index_subs_on_title         (title) UNIQUE
#
require 'test_helper'

class SubTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
