# == Schema Information
#
# Table name: pictures
#
#  id         :bigint           not null, primary key
#  caption    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :bigint           not null
#
# Foreign Keys
#
#  fk_rails_...  (post_id => posts.id)
#
class Picture < ApplicationRecord
  belongs_to :post, class_name: "Post", foreign_key: "post_id"
end
