require 'faker'

puts "🌱 Seeding data..."

User.destroy_all
Post.destroy_all

# Make 5 users
5.times do
    user = User.create(
        username: Faker::Internet.username,
        password: Faker::Internet.password
    )
end

# Make 10 posts
10.times do 
    post = Post.create(
        date: Faker::Time.between(from: DateTime.now - 60, to: DateTime.now),
        title: Faker::Lorem.sentence,
        body: Faker::Lorem.paragraph,
        user_id: User.all.sample.id
    )
end

puts "✅ Done seeding!"
