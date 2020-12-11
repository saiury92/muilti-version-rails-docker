class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: true }
end
