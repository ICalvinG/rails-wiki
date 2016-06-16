class HomeController < ApplicationController

  def index
    @articles = Article.all
  end

  def search
    @wiki_query = Article.search do
      keywords(params[:title])
    end
    @products = @wiki_query.results
  end

end
