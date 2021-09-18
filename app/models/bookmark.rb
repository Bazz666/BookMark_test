class Bookmark < ApplicationRecord
    has_many :bookmark_categories
    has_many :categories, through: :bookmark_categories

    has_many :bookmark_types
    has_many :types, through: :bookmark_types
end
