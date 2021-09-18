class Type < ApplicationRecord

    has_many :bookmark_types
    has_many :bookmarks, through: :bookmark_types
    
    validates :title, uniqueness: true
    
    def to_s
        title
    end

end
