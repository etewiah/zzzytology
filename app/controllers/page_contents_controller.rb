class PageContentsController < ApplicationController
  respond_to :json
  
  def index
    respond_with PageContent.all
  end
 
  def show
    respond_with PageContent.find(params[:id])
  end
  
  def create
    respond_with PageContent.create(params[:page_content])
  end
  
  def update
    respond_with PageContent.update(params[:id], params[:page_content])
  end
  
  def destroy
    respond_with PageContent.destroy(params[:id])
  end

end
