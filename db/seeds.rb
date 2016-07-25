# REMOVE PREVIOUS DATA
User.delete_all; Article.delete_all; Category.delete_all; ArticlesCategory.delete_all; Wiki.delete_all; Role.delete_all; Snapshot.delete_all


# CATEGORIES
rails_category = Category.create!(name: "Rails")
gems_category = Category.create!(name: "Gems")
guide_category = Category.create!(name: "Guides")
other_category = Category.create!(name: "Other")

# CHAND
	# WIKIS
		chands_wiki = Wiki.create!(name: 'Chand Technologies')
	# ADMIN ACCOUNTS
		chand = User.create!(email: "chand@chand.com", password: "123456")
			chand.roles.create!(admin?: true, wiki_id: chands_wiki.id)
	# USER ACCOUNTS
		chand_2 = User.create!(email: "chand_2@chand.com", password: "123456")
	# ARTICLES
		chands_article = chand.articles.create!(title: "Why Rails is Awesome", featured?: true, wiki_id: chands_wiki.id)
			chands_article.snapshots.create!(body: "Here are the top 10 reasons Ruby on Rails is awesome:...")
				chands_article.articles_category.create!(category: rails_category)

# ILYA
	# WIKIS
		ilyas_wiki = Wiki.create!(name: 'Ilya Industries')	
	# ADMIN ACCOUNTS
		ilya = User.create!(email: "ilya@ilya.com", password: "123456")
			ilya.roles.create!(admin?: true, wiki_id: ilyas_wiki.id)
	# USER ACCOUNTS
		ilya_2 = User.create!(email: "ilya_2@ilya.com", password: "123456")
	# ARTICLES
		ilyas_article = ilya.articles.create!(title: "Devise Gem How-to", featured?: true, wiki_id: ilyas_wiki.id)
			ilyas_article.snapshots.create!(body:"Devise is a confusing gem to work with, if you want to be able to customize your user authentication settings. Here are some easy steps to get you started: ...")
				ilyas_article.articles_category.create!(category: gems_category)
				ilyas_article.articles_category.create!(category: guide_category)


# CALVIN
	# WIKIS
		calvins_wiki = Wiki.create!(name: 'Calvin Corporation')
	# ADMIN ACCOUNTS
		calvin = User.create!(email: "calvin@calvin.com", password: "123456")
			calvin.roles.create!(admin?: true, wiki_id: calvins_wiki.id)
	# USER ACCOUNTS
		calvin_2 = User.create!(email: "calvin_2@calvin.com", password: "123456")
	# ARTICLES
		calvins_article = calvin.articles.create!(title: "Sinatra before Rails", featured?: true, wiki_id: calvins_wiki.id)
			calvins_article.snapshots.create!(body:"Sinatra is a back-end framework that is less opinionated than Rails, meaning it requires more knowledge of routes, controllers, models, etc...")
				calvins_article.articles_category.create!(category: guide_category)
				calvins_article.articles_category.create!(category: other_category)			

# ALICE
	# WIKIS
		alices_wiki = Wiki.create!(name: 'Alice Co.')
	# ADMIN ACCOUNTS
		alice = User.create!(email: "alice@alice.com", password: "123456")
			alice.roles.create!(admin?: true, wiki_id: alices_wiki.id)
	# USER ACCOUNTS
		alice_2 = User.create!(email: "alice_2@alice.com", password: "123456")
	# ARTICLES
		alices_article = alice.articles.create!(title: "List of Rails Gems", featured?: true, wiki_id: alices_wiki.id)
			alices_article.snapshots.create!(body: "Rails Gems are Ruby libraries for the the back-end framework, Ruby on Rails... Here is a comprehensive list of all Rails Gems with over 20,000 downloads")
				alices_article.articles_category.create!(category: rails_category)
				alices_article.articles_category.create!(category: gems_category)

# JOE
	# WIKIS
		joes_wiki = Wiki.create!(name: 'Joe Inc.')
	# ADMIN ACCOUNTS
		joe = User.create!(email: "joe@joe.com", password: "123456")
			joe.roles.create!(admin?: true, wiki_id: joes_wiki.id)
	# USER ACCOUNTS
		joe_2 = User.create!(email: "joe_2@joe.com", password: "123456")
	# ARTICLES
		joes_article = joe.articles.create!(title: "History of Rails", featured?: true, wiki_id: joes_wiki.id)
			joes_article.snapshots.create!(body: "Rails was created in 2003 by David Heinemeier...")
				joes_article.articles_category.create!(category: rails_category)
