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
class Sub < ApplicationRecord
    validates_presence_of :description, :title
    validates_uniqueness_of :title


    belongs_to :moderator,
    foreign_key: :moderator_id,
    class_name: :User

    # has_many :sub_posts, 
    # through: :moderator,
    # source: :posts
end
