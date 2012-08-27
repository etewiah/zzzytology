class LiffsController < ApplicationController
  respond_to :json
  
  def index
    respond_with Liff.all
  end
 
  def show
    respond_with Liff.find(params[:id])
  end
  
  def create
    respond_with Liff.create(params[:liff])
  end
  
  def update
    respond_with Liff.update(params[:id], params[:liff])
  end
  
  def destroy
    respond_with Liff.destroy(params[:id])
  end

end
