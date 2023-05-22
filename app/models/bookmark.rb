class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6 }
  validate :movie_list_uniqueness

  private

  def movie_list_uniqueness
    if Bookmark.exists?(movie_id: movie_id, list_id: list_id)
      errors.add(:base, 'This movie and list pairing already exist.')
    end
  end
end
