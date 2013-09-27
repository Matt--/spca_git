class UploadController < ApplicationController
  def index
     @files = Dir.glob("public/uploads/*")
     render :file => 'app/views/upload/index.rhtml'
  end
  def create
    require 'fileutils'
    tmp = params[:uploadFile][:my_file].tempfile
    file = File.join("public/uploads", params[:uploadFile][:my_file].original_filename)
    FileUtils.cp tmp.path, file
    redirect_to action: 'index', status: 303
    #FileUtils.rm file
  end
end