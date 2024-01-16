# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do
    post_data = {
      tilte: Faker::Lorem.sentence,
      content_body: "<div>#{Faker::Lorem.paragraph}</div>"
    }
  
    # Create a new Post
    post = Post.create!(tilte: post_data[:tilte])
  
    # Create a new RichText record and associate it with the Post
    rich_text = ActionText::RichText.create!(body: post_data[:content_body], name: "content", record_type: "Post", record_id: post.id)
  
    # Associate the RichText record with the Post model
    post.content = rich_text
    post.save!
  end


puts "10 posts imported successfully!"