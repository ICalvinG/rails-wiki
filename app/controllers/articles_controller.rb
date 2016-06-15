class ArticlesController < ApplicationController
    before_action :authenticate_user! exception: [:index, :show] 
    before_action :ensure_admin!, only: [:new, :create, :destroy]



 	def index
  		@articles = Article.all
 	end

    def new
    	@article = Article.new
 	end

  	def create
     	@article = Article.new(article_params)
    	if @article.save
       	 redirect_to articles_path
    	else
     	 render 'new'
   	    end
  	end

	def edit
	end

	def show
		@article = Article.find(params[:id])

		render 'show'
	end

	def update
	end

	def destroy

	end

	private

	def article_params
    	params.require(:article).permit(:title, :body)
  	end

end
