class SnapshotsController < ApplicationController

<<<<<<< d91eecabb6d482ec35514c4135ef108447de39c1
	def show
		@snapshot = Snapshot.find(params[:id])
    	@article = Article.find(@snapshot.article_id)
=======
	before_action :authenticate_user!
	def index
		@snapshots = Snapshot.all
    	# @snapshot = Snapshot.find(@article.snapshots.last.id)
>>>>>>> add admin functionality

		render 'show'
	end

end
