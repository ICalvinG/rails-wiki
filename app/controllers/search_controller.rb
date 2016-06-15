class SearchController < ApplicationController
	def index
		@groups = Group.find_by(name: params[:name])
	end
end