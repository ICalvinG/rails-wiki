User.delete_all
Article.delete_all
Category.delete_all
ArticlesCategory.delete_all
Wiki.delete_all
Role.delete_all
Snapshot.delete_all

chand = User.create!(email: "chand@chand.com", password: "123456")
chands_wiki = Wiki.create!(name: 'Chand Technologies')
chands_admin_role = chand.roles.create!(admin?: true, wiki_id: chands_wiki.id)

ilya = User.create!(email: "ilya@ilya.com", password: "123456")
ilyas_wiki = Wiki.create!(name: 'Ilya Industries')
ilyas_admin_role = ilya.roles.create!(admin?: true, wiki_id: ilyas_wiki.id)

calvin = User.create!(email: "calvin@calvin.com", password: "123456")
calvins_wiki = Wiki.create!(name: 'Calvin Corporation')
calvins_admin_role = calvin.roles.create!(admin?: true, wiki_id: calvins_wiki.id)

alice = User.create!(email: "alice@alice.com", password: "123456")
alices_wiki = Wiki.create!(name: 'Alice Co.')
alices_admin_role = alice.roles.create!(admin?: true, wiki_id: alices_wiki.id)

joe = User.create!(email: "joe@joe.com", password: "123456")
joes_wiki = Wiki.create!(name: 'Joe Inc.')
joes_admin_role = joe.roles.create!(admin?: true, wiki_id: joes_wiki.id)


chands_article = chand.articles.create!(title: "Rails is awesome", featured?: true, wiki_id: chands_wiki.id)
ilyas_article = ilya.articles.create!(title: "Devise Gem How-to", featured?: true, wiki_id: ilyas_wiki.id)
calvins_article = calvin.articles.create!(title: "Calvin is the best!", featured?: true, wiki_id: calvins_wiki.id)
alices_article = alice.articles.create!(title: "Rails Gems", featured?: true, wiki_id: alices_wiki.id)
joes_article = joe.articles.create!(title: "I like Rails", featured?: true, wiki_id: joes_wiki.id)

Snapshot.create!(body: "rails is great", article: article_one, user_id: 1)

Snapshot.create!(body: "devise is a bitch", article: article_two, user_id: 2)


cat_one = Category.create!(name: "rails")

cat_two = Category.create!(name: "gems")

cat_three = Category.create!(name: "guide")

ArticlesCategory.create!(article: article_one, category: cat_one)

ArticlesCategory.create!(article: article_two, category: cat_one)

ArticlesCategory.create!(article: article_two, category: cat_two)

ArticlesCategory.create!(article: article_two, category: cat_three)
