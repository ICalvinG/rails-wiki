class RolesController < ApplicationController
  before_action :authenticate_user!, exception: [:index, :show, :create]
def index
	@wiki = Wiki.find_by(params[:wiki])
end

def create
	@wiki = Wiki.find_by(params[:wiki_id])
	@role = Role.create!(user_id: current_user.id, wiki_id: @wiki.id, admin?: false)
	redirect_to "/wikis/#{@wiki.id}"
end

end
