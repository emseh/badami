# frozen_string_literal: true

# app/models/article.rb
class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 2 }
  validates :body, presence: true, length: { minimum: 6 }
end
