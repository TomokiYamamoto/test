class Post < ApplicationRecord
  # contentカラムに対して、空の投稿を制限するバリデーションを作成してください
  validates :content, {presence: true, length: {maximum: 140}}
end
