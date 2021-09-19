# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Bookmark.destroy_all
Type.destroy_all
Category.destroy_all


public_bool = [true, false]

20.times do
    Category.create!(
        name: Faker::Color.color_name,
        public: public_bool.sample()
    )
end



20.times do
    Bookmark.create!(
        name: Faker::Cannabis.brand,
        url: Faker::Internet.url,
        
    )
end

20.times do
    Type.create!(
        name: Faker::Cannabis.type
    )
end