class WikisController < ApplicationController
  before_action :authenticate_user! exception: [:index, :show]
  before_action :ensure_admin!, only: [:update, :edit, :destroy]


	def index
		@wikis = Wiki.all
	end

	def show
		@wiki = Wiki.find(params[:id])
	end

	def new
	end

	def edit
		@wiki = Wiki.find(params[:id])
	end

	def create
		@wiki = Wiki.new(params.require(:wiki).permit(:name))
		@wiki.save
  		redirect_to @wiki
	end

	def update
		 @wiki = Wiki.find(params[:id])

  		if @wiki.update(params.require(:wiki).permit(:name))
    		redirect_to @wiki
  		else
    		render 'edit'
  		end
	end

	def destroy
		@wiki = Wiki.find(params[:id])
  		@wiki.destroy

  		redirect_to wikis_path
	end
end
