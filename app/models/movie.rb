class Movie < ApplicationRecord
  has_many :bookmarks
  #validators
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  private

  def check_if_bookmarks
    return unless bookmarks.exists?
  end
end
