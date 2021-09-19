class Type < ApplicationRecord
    has_many :categories
    validates :name, presence: true
    
    def to_s
        name
    end
end
