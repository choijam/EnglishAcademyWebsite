require 'mailgun'

class HomeController < ApplicationController
  def index
  end

  def login
  end
  
  def homework
  end
 
  def asking
  end
  
  def asking_write
    @name=params[:name]
    @number=params[:telephone]
    @email=params[:email]
    @content=params[:content]
    
    @text="이름 : "+ @name +" 연락처 : "+ @number + " 상담 내용 : "+ @content
    
    mg_client = Mailgun::Client.new("key-11c79ef0dcaa65baf75506b06e8f30bf")

    message_params =  {
                       from: @email,
                       to:   'snowgirl2677@naver.com',
                       subject: '상담 신청 이메일 입니다.',
                       text: @text
                      }
    
    result = mg_client.send_message('sandbox4a671b657c4e4e9aafce7e85e2ef2519.mailgun.org', message_params).to_h!
    
    message_id = result['id']
    message = result['message']
    
    redirect_to '/'
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
  
  def h730_1
    
  end
  
  def de_h730
    de_h730=H730.find(params[:id])
    de_h730.destroy
    redirect_to '/home/h730'
    
  end
  
  def h730
    WillPaginate.per_page= 3
    @h730=H730.paginate(:page => params[:page]).order('created_at desc')
  end
  
  def h730_upload
    allcontents= H730.new(title: params[:title],
    content: params[:content], user: current_user)
    allcontents.save
    
    redirect_to '/home/h730'
  end
  
  def h730_write
  end
  
  def h730_modify
     @mo_content=H730.find(params[:id])
     
  end
  
  def h730_update
     up_content=H730.find(params[:id])
     up_content.title = params[:title]
     up_content.content = params[:content]
     up_content.save
     
     redirect_to '/home/h730'
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
  
  def de_h735
    de_h735=H735.find(params[:id])
    de_h735.destroy
    redirect_to '/home/h735'
  end
  
  def h735_modify
     @mo_content=H735.find(params[:id])
     
  end
  
  def h735_update
     up_content=H735.find(params[:id])
     up_content.title=params[:title]
     up_content.content=params[:content]
     up_content.save
    redirect_to '/home/h735'
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
  
  def de_h727
    de_h727=H727.find(params[:id])
    de_h727.destroy
    redirect_to '/home/h727'
  end
  
  def h727_modify
     @mo_content=H727.find(params[:id])
     
  end
  
  def h727_update
     up_content=H727.find(params[:id])
     up_content.title=params[:title]
     up_content.content=params[:content]
     up_content.save
    redirect_to '/home/h727'
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
  
  def de_h738
    de_h738=H738.find(params[:id])
    de_h738.destroy
    redirect_to '/home/h738'
  end
  
  def h738_modify
     @mo_content=H738.find(params[:id])
     
  end
  
  def h738_update
     up_content=H738.find(params[:id])
     up_content.title=params[:title]
     up_content.content=params[:content]
     up_content.save
    redirect_to '/home/h738'
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
  
  def de_h725
    de_h725=H725.find(params[:id])
    de_h725.destroy
    redirect_to '/home/h725'
  end
  
  def h725_modify
     @mo_content=H725.find(params[:id])
     
  end
  
  def h725_update
     up_content=H725.find(params[:id])
     up_content.title=params[:title]
     up_content.content=params[:content]
     up_content.save
    redirect_to '/home/h725'
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
  
  def de_h500
    de_h500=H500.find(params[:id])
    de_h500.destroy
    redirect_to '/home/h500'
  end
  
  def h500_modify
     @mo_content=H500.find(params[:id])
     
  end
  
  def h500_update
     up_content=H500.find(params[:id])
     up_content.title=params[:title]
     up_content.content=params[:content]
     up_content.save
    redirect_to '/home/h500'
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
  
  def de_h510
    de_h510=H510.find(params[:id])
    de_h510.destroy
    redirect_to '/home/h510'
  end
  
  def h510_modify
     @mo_content=H510.find(params[:id])
     
  end
  
  def h510_update
     up_content=H510.find(params[:id])
     up_content.title=params[:title]
     up_content.content=params[:content]
     up_content.save
    redirect_to '/home/h510'
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
  
  def de_h339
    de_h339=H339.find(params[:id])
    de_h339.destroy
    redirect_to '/home/h339'
  end
  
  def h339_modify
     @mo_content=H339.find(params[:id])
     
  end
  
  def h339_update
     up_content=H339.find(params[:id])
     up_content.title=params[:title]
     up_content.content=params[:content]
     up_content.save
    redirect_to '/home/h339'
  end
  
  def announce
    WillPaginate.per_page= 3
    @announce=Announce.paginate(:page => params[:page]).order('created_at desc')
    @a=Announce.all
    
  end
  
  def announce_write
  end
  
  def announce_upload
    announce=Announce.new
    announce.title=params[:title]
    announce.content=params[:content]
    announce.save
    redirect_to '/home/announce'
  end
  
  def announce_modify
    @mo_content=Announce.find(params[:id])
  end
  
  def de_announce
    de_h100=Announce.find(params[:id])
    de_h100.destroy
    redirect_to '/home/announce'
  end
  
  def announce_update
     up_content=Announce.find(params[:id])
     up_content.title=params[:title]
     up_content.content=params[:content]
     up_content.save
    redirect_to '/home/announce'
  end
   
  def h100
    WillPaginate.per_page= 3
    @h100=H100.paginate(:page => params[:page]).order('created_at desc')
  end
  
  def h100_upload
    allcontents=H100.new
    allcontents.title=params[:title]
    allcontents.content=params[:content]
    allcontents.save
    redirect_to '/home/h100'
  end
  
  def h100_write
  end
  
  def de_h100
    de_h100=H100.find(params[:id])
    de_h100.destroy
    redirect_to '/home/h100'
  end
  
  def h100_modify
     @mo_content=H100.find(params[:id])
     
  end
  
  def h735_update
     up_content=H100.find(params[:id])
     up_content.title=params[:title]
     up_content.content=params[:content]
     up_content.save
    redirect_to '/home/h100'
  end
  
  
end
