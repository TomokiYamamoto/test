# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_name :string
#  password   :string
#

class User < ApplicationRecord
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  def posts
    return Post.where(user_id: self.id)
  end

end
