class SnapshotsController < ApplicationController

	def index
		@snapshots = Snapshot.all
    	# @snapshot = Snapshot.find(@article.snapshots.last.id)

		render 'index'
	end

end
