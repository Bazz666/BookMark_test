class BookmarkType < ApplicationRecord
  belongs_to :bookmark
  belongs_to :type
end
