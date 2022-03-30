# frozen_string_literal: true

# app/models/article.rb
class Article < ApplicationRecord
  belongs_to :user

  has_many :article_categories
  has_many :categories, through: :article_categories

  validates :title, presence: true, length: { minimum: 2 }
  validates :body, presence: true, length: { minimum: 6 }
end
