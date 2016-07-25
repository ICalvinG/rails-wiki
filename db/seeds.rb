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


chands_article = chand.articles.create!(title: "Why Rails is Awesome", featured?: true, wiki_id: chands_wiki.id)
ilyas_article = ilya.articles.create!(title: "Devise Gem How-to", featured?: true, wiki_id: ilyas_wiki.id)
calvins_article = calvin.articles.create!(title: "Sinatra before Rails", featured?: true, wiki_id: calvins_wiki.id)
alices_article = alice.articles.create!(title: "List of Rails Gems", featured?: true, wiki_id: alices_wiki.id)
joes_article = joe.articles.create!(title: "History of Rails", featured?: true, wiki_id: joes_wiki.id)

chands_article.snapshots.create!(body: "Here are the top 10 reasons Ruby on Rails is awesome:...")
ilyas_article.snapshots.create!(body:"Devise is a confusing gem to work with, if you want to be able to customize your user authentication settings. Here are some easy steps to get you started: ...")
calvins_article.snapshots.create!(body:"Sinatra is a back-end framework that is less opinionated than Rails, meaning it requires more knowledge of routes, controllers, models, etc...")
alices_article.snapshots.create!(body: "Rails Gems are Ruby libraries for the the back-end framework, Ruby on Rails... Here is a comprehensive list of all Rails Gems with over 20,000 downloads")
joes_article.snapshots.create!(body: "Rails was created in 2003 by David Heinemeier...")

rails_category = Category.create!(name: "Rails")
gems_category = Category.create!(name: "Gems")
guide_category = Category.create!(name: "Guides")
other_category = Category.create!(name: "Other")

chands_article.articles_category.create!(category: rails_category)


ilyas_article.articles_category.create!(category: gems_category)
ilyas_article.articles_category.create!(category: guide_category)

calvins_article.articles_category.create!(category: guide_category)
calvins_article.articles_category.create!(category: other_category)

alices_article.articles_category.create!(category: rails_category)
alices_article.articles_category.create!(category: gems_category)

joes_article.articles_category.create!(category: rails_category)
