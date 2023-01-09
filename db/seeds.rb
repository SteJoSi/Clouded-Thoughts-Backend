require 'faker'

puts "🌱 Seeding data..."

User.destroy_all
Post.destroy_all

# Make 5 users
5.times do
    user = User.create(
        username: Faker::User.username,
        password: Faker::User.password
    )
end

# Make 10 posts
10.times do 
    post = Post.create(
        date: Faker::Post.date,
        title: Faker::Post.title,
        body: Faker::Post.body
    )
end

puts "✅ Done seeding!"
