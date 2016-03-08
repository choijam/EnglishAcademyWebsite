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
  
  def h730
    WillPaginate.per_page= 3
    @h730=H730.paginate(:page => params[:page]).order('created_at desc')
  end
  
  def h730_upload
    allcontents=H730.new
    allcontents.title=params[:title]
    allcontents.content=params[:content]
    allcontents.save
    redirect_to '/home/h730'
  end
  
  def h730_write
  end
  
  def h735
    WillPaginate.per_page= 3
    @h735=H735.paginate(:page => params[:page]).order('created_at desc')
  end
  
  def h735_upload
    allcontents=H735.new
    allcontents.title=params[:title]
    allcontents.content=params[:content]
    allcontents.save
    redirect_to '/home/h735'
  end
  
  def h735_write
  end
  
  def h727
    WillPaginate.per_page= 3
    @h727=H727.paginate(:page => params[:page]).order('created_at desc')
  end
  
  def h727_upload
    allcontents=H727.new
    allcontents.title=params[:title]
    allcontents.content=params[:content]
    allcontents.save
    redirect_to '/home/h727'
  end
  
  def h727_write
  end
  
  def h738
    WillPaginate.per_page= 3
    @h738=H738.paginate(:page => params[:page]).order('created_at desc')
  end
  
  def h738_upload
    allcontents=H738.new
    allcontents.title=params[:title]
    allcontents.content=params[:content]
    allcontents.save
    redirect_to '/home/h738'
  end

  def h738_write
  end
  
  def h725
    WillPaginate.per_page= 3
    @h725=H725.paginate(:page => params[:page]).order('created_at desc')
  end
  
  def h725_upload
    allcontents=H725.new
    allcontents.title=params[:title]
    allcontents.content=params[:content]
    allcontents.save
    redirect_to '/home/h725'
  end

  def h725_write
  end
  
  def h500
    WillPaginate.per_page= 3
    @h500=H500.paginate(:page => params[:page]).order('created_at desc')
  end
  
  def h500_upload
    allcontents=H500.new
    allcontents.title=params[:title]
    allcontents.content=params[:content]
    allcontents.save
    redirect_to '/home/h500'
  end

  def h500_write
  end
  
  def h510
    WillPaginate.per_page= 3
    @h510=H510.paginate(:page => params[:page]).order('created_at desc')
  end
  
  def h510_upload
    allcontents=H510.new
    allcontents.title=params[:title]
    allcontents.content=params[:content]
    allcontents.save
    redirect_to '/home/h510'
  end

  def h510_write
  end
  
  def h339
    WillPaginate.per_page= 3
    @h339=H339.paginate(:page => params[:page]).order('created_at desc')
  end
  
  def h339_upload
    allcontents=H339.new
    allcontents.title=params[:title]
    allcontents.content=params[:content]
    allcontents.save
    redirect_to '/home/h339'
  end

  def h339_write
  end
  
  
end
