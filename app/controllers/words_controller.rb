class WordsController < ApplicationController
  def index
  	@pagecontent = ""
  end

  def about
  	@pagecontent = PageContent.all
  end
end
