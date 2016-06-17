class RolesController < ApplicationController
  before_action :authenticate_user!, exception: [:index, :show, :create]
def index
	@wiki = Wiki.find_by(params[:wiki])
end


end
