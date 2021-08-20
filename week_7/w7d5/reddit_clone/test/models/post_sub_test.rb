# == Schema Information
#
# Table name: post_subs
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer          not null
#  sub_id     :integer          not null
#
# Indexes
#
#  index_post_subs_on_post_id  (post_id)
#  index_post_subs_on_sub_id   (sub_id)
#
require 'test_helper'

class PostSubTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
