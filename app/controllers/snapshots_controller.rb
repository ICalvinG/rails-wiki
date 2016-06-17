class SnapshotsController < ApplicationController
	before_action :authenticate_user!	

	def show
		@snapshot = Snapshot.find(params[:id])
    	@article = Article.find(@snapshot.article_id)
		render 'show'
	end

end
