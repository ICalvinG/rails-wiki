User.delete_all
Article.delete_all
Category.delete_all
ArticlesCategory.delete_all
Wiki.delete_all
Role.delete_all
Snapshot.delete_all

chand = User.create!(email: "chand@chand.com", password: "123456")
ilya = User.create!(email: "ilya@ilya.com", password: "123456")
calvin = User.create!(email: "calvin@calvin.com", password: "123456")
alice = User.create!(email: "alice@alice.com", password: "123456")
joe = User.create!(email: "joe@joe.com", password: "123456")

joe.roles.create

article_one = Article.create!(title: "Rails is awesome", featured?: true)

article_two = Article.create!(title: "Devise Gem How-to", featured?: false)

Snapshot.create!(body: "rails is great", article: article_one, user_id: 1)

Snapshot.create!(body: "devise is a bitch", article: article_two, user_id: 2)


cat_one = Category.create!(name: "rails")

cat_two = Category.create!(name: "gems")

cat_three = Category.create!(name: "guide")

ArticlesCategory.create!(article: article_one, category: cat_one)

ArticlesCategory.create!(article: article_two, category: cat_one)

ArticlesCategory.create!(article: article_two, category: cat_two)

ArticlesCategory.create!(article: article_two, category: cat_three)
