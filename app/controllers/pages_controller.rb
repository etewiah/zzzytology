class PagesController < ApplicationController
  def index
  	@pagecontent = PageContent.all
  end

  def about
  end
end
