class Article < ApplicationRecord
  include Visible
  
  has_many :comments, dependent: :destroy #  If you have an instance variable @article containing an article, you can retrieve all the comments belonging to that article as an array using @article.comments.

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

end
