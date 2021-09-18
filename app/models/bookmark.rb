class Bookmark < ApplicationRecord
    has_and_belongs_to_many :categories, dependent: :nullify


    def name_category
        Category.references(:bookmarks).where(id: category_id).pluck :name
    end
end
