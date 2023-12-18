class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prototype

  # テキストのバリデーション
validates :content, presence: true
end
