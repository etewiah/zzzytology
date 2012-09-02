class WordsController < ApplicationController
  def index
  	@words = Liff.order('lower(word)').to_a
  end

  def about
  	@pagecontent = PageContent.all
  end
end
