puts "🌱 Seeding spices..."

# Make 5 users
5.times do
    User.create(name: Faker::Name.name)
    User.create(password: Faker::Password.password)
end

# Make 10 posts
10.times do 
    post = Post.create(
        date: Faker::Post.date,
        title: Faker::Post.title,
        text: Faker::Post.text
    )
end

puts "✅ Done seeding!"
