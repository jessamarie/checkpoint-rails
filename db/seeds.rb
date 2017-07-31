# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Post.destroy_all

post1 = Post.create(
  content: "This is awesome content",
  is_published: true
)

post2 = Post.create(
  content: "This is far better content",
  is_published: false
)

post1.comments.create(
  body: "This is a comment"
)

post2.comments.create(
  body: "This is a comment as well"
)

post1.comments.create(
  body: "This is another comment"
)
