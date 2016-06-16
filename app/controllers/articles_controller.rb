class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :ensure_admin!, only: [:edit, :update, :destroy]



 	def index
  		@articles = Article.all
 	end

  def new
    	@article = Article.new
      @article.snapshots << Snapshot.new
 	end

  	def create
      @article = Article.new(article_params)
      if @article.save
        @snapshot = Snapshot.new(snapshot_params)
        @snapshot.article = @article
          if @snapshot.save
           redirect_to articles_path
          else
           render 'new'
          end
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
    p	params.require(:article).permit(:title)
  end

  def snapshot_params
      params.require(:article).require(:snapshots).permit(:body)
  end

end
