class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  before_action :ensure_admin!, only: [:edit, :update, :destroy]
  

 	def index
    @articles = Article.all
 	end

  def new
    	@article = Article.new
      @wiki = Wiki.find_by(id: params[:wiki_id])
      @article.snapshots << Snapshot.new

 	end

  	def create
      @wiki = Wiki.find(params[:wiki_id])
      @article = Article.new(article_params.merge(wiki: @wiki))
      if @article.save
        redirect_to wiki_path(@wiki)
      else
        render 'new'
      end
  	end

	def edit
    @article = Article.find(params[:id])

      render 'edit'
	end

	def show
    @article = Article.find(params[:id])
    @snapshot = Snapshot.find(@article.snapshots.last.id)
    @user = @snapshot.user
    @wiki = Wiki.find_by(id: @article.wiki_id)
		render 'show'
	end

	def update
    @article = Article.find(params[:id])
    @wiki = Wiki.find_by(id: @article.wiki_id)
      if @article.update(article_params)
        @snapshot = Snapshot.find(@article.snapshots.last.id)
        @snapshot.article = @article
          if @snapshot = Snapshot.new(snapshot_params)
             @snapshot.article = @article
            if @snapshot.save
              redirect_to article_path
            else
              render 'edit'
            end
          else
           render 'edit'
          end
      else
        render 'edit'
      end
	end

	def destroy
    @article = Article.find(params[:id])
    @snapshot = Snapshot.find(@article.snapshots.last.id)
      @article.destroy

      @snapshot.destroy

      redirect_to articles_path
	end

	private

	def article_params
      params.require(:article).permit(
        :title,
        snapshots_attributes: [:body]
      )
  end

  def snapshot_params
      params.require(:article).require(:snapshots).permit(:body)
  end

end
