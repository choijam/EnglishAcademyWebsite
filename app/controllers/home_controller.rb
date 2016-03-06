class HomeController < ApplicationController
  def index
  end
  
  def login
  end
  
  def homework
  end
  
  def three
    WillPaginate.per_page= 3
    @output_hw=Homework.paginate(:page => params[:page]).order('created_at desc')
  end
  
  def asking
  end
  
  def three_write
  end
  
  def hw_upload
    allcontents=Homework.new
    allcontents.title=params[:title]
    allcontents.content=params[:content]
    allcontents.save
    redirect_to '/home/three'
  end
  
  def hw_delete
    
  end
  
  
end
