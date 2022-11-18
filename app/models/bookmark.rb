class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # validates :movie, presence: true, allow_blank: false
  # validates :list, presence: true, allow_blank: false
  validates :list, uniqueness: { scope: :movie }
  validates :comment, presence: true, length: { minimum: 6 }
end
