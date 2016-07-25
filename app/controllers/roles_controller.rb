class RolesController < ApplicationController
  before_action :authenticate_user!, exception: [:index, :show, :create]

	def index
		@wiki = Wiki.find_by(id: params[:format].to_i)
	end

	def create
		@wiki = Wiki.find_by(id: params[:wiki_id])
		@role = Role.create!(user_id: current_user.id, wiki_id: @wiki.id, admin?: false)
		redirect_to "/wikis/#{@wiki.id}"
	end

	def update
		@role = Role.find_by(id: params[:role_id])
		@roles = @role.wiki.roles
		@role.update(admin?: params[:admin?])
		redirect_to :back
	end

end
