class Article < ApplicationRecord
      belongs_to :user
      has_many :article_categories
      has_many :articles, through: :article_categories
      validates :title, presence: true, length: { minimum: 6, maximum: 25}
      validates :description, presence: true, length: { minimum: 10, maximum: 300}
end