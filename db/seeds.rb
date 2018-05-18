# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
           title: "#{topic}"
  )
end


10.times do |blog|
  Blog.create!(
          title: "my blog post #{blog + 1}",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          topic_id: Topic.last.id
  )
end

5.times do |skill|
  Skill.create!(
           title: "Rails #{skill + 1}",
           percent_utilized: 15
  )
end

8.times do |portfolio_item|
  Portfolio.create!(
           title: "portfolio title #{portfolio_item + 1}" ,
           subtitle: "Ruby on Rails",
           body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
           main_image: "https://placeholdit.co//i/600x400",
           thumb_image: "https://placeholdit.co//i/350x200"
  )
end

  1.times do |portfolio_item|
    Portfolio.create!(
        title: "portfolio title #{portfolio_item + 1}" ,
        subtitle: "Angular",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        main_image: "https://placeholdit.co//i/600x400",
        thumb_image: "https://placeholdit.co//i/350x200"
    )
end
