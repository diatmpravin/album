class UploadsController < ApplicationController
  
  layout "logins"
  
  def index
     render :file => 'app\views\uploads\uploadfile.html.erb'
  end
  def uploadFile
    posts = DataFile.save( params[:upload])
    flash[:notice]="File has been uploaded successfully"
    redirect_to :action=>'index'
  end 
  
  
end
