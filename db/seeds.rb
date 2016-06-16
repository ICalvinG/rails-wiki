# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Article.delete_all
Category.delete_all
ArticlesCategory.delete_all


User.create!(email: "chand@chand.com", password: "123456")

User.create!(email: "ilya@ilya.com", password: "123456")

User.create!(email: "calvin@calvin.com", password: "123456")

User.create!(email: "alice@alice.com", password: "123456")

User.create!(email: "joe@joe.com", password: "123456")


User.create!(email: "chandadmin@chand.com", password: "123456")

User.create!(email: "ilyaadmin@ilya.com", password: "123456")

User.create!(email: "calvinadmin@calvin.com", password: "123456")

User.create!(email: "aliceadmin@alice.com", password: "123456")

User.create!(email: "joeadmin@joe.com", password: "123456")




article_one = Article.create!(title: "Rails is awesome", featured?: true)

article_two = Article.create!(title: "Devise Gem How-to", featured?: false)

cat_one = Category.create!(name: "rails")

cat_two = Category.create!(name: "gems")

cat_three = Category.create!(name: "guide")

ArticlesCategory.create!(article: article_one, category: cat_one)

ArticlesCategory.create!(article: article_two, category: cat_one)

ArticlesCategory.create!(article: article_two, category: cat_two)

ArticlesCategory.create!(article: article_two, category: cat_three)


