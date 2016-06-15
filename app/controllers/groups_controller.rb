class GroupsController < ApplicationController
    before_action :authenticate_user! exception: [:index, :show]
      before_action :ensure_admin!, only: [:new, :create, :destroy]
 

	def index
		@groups = Group.all
	end

	def show
		@group = Group.find(params[:id])
	end

	def new
	end

	def edit
		@group = Group.find(params[:id])
	end

	def create	
		@group = Group.new(params.require(:group).permit(:name))
		@group.save
  		redirect_to @group
	end

	def update
		 @group = Group.find(params[:id])
 
  		if @group.update(params.require(:group).permit(:name))
    		redirect_to @group
  		else
    		render 'edit'
  		end
	end

	def destroy
		@group = Group.find(params[:id])
  		@group.destroy
 
  		redirect_to groups_path	
	end
end