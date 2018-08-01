class Post < ApplicationRecord
  # contentカラムに対して、空の投稿を制限するバリデーションを作成してください
  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id,{presence: true}

  def user
    return User.find_by(id:self.user_id)
  end

end
