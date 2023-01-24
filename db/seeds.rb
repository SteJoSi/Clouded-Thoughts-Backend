require 'faker'
# require 'pry'

puts "🌱 Seeding data..."

puts "Deleteing old data"
User.destroy_all
Post.destroy_all

# Make 5 users
8.times do
    user = User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        username: Faker::Internet.username,
        password: Faker::Internet.password
    )
end

# Make 10 posts
9.times do 
    post = Post.create(
        date: Faker::Time.between(from: DateTime.now - 60, to: DateTime.now),
        title: Faker::Lorem.sentence,
        body: Faker::Lorem.paragraph,
        user_id: User.all.sample.id
    )
end

# binding.pry
puts "✅ Done seeding!"
