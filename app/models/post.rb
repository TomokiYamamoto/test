# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ApplicationRecord
  # contentカラムに対して、空の投稿を制限するバリデーションを作成してください
  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id,{presence: true}
  belongs_to :users
  has_many :comments
  def user
    return User.find_by(id:self.user_id)
  end

end
