class SnapshotsController < ApplicationController

	def show
		@article = Article.find(params[:id])
    	@snapshot = Snapshot.find(@article.snapshots.last.id)

		render 'show'
	end

end
