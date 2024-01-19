
# 100.times do
#     post_data = {
#       title: Faker::Lorem.sentence,
#       content_body: "<div>#{Faker::Lorem.paragraph}</div>"
#     }
  
#     post = Post.create!(title: post_data[:title])
  
#     rich_text = ActionText::RichText.create!(body: post_data[:content_body], name: "content", record_type: "Post", record_id: post.id)
  
#     post.content = rich_text
#     post.save!
#   end


# puts "10 posts imported successfully!"

# accounts = []

# 100.times do
#   accounts << Account.new(email: Faker::Internet.email, username: Faker::Name.name, is_admin: true, password: '123456')
# end


# Account.import accounts

# puts "100 accounts imported successfully!"

ratings = []
value_rate = (1..5).step(1).to_a
1000.times do
  ratings << Rate.new(account_id: rand(1..Account.count),post_id: rand(1..Post.count), comment: Faker::Quote.matz, rating: value_rate.sample(1)[0])
end


Rate.import ratings

puts "100 ratings imported successfully!"