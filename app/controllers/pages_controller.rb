class PagesController < ApplicationController
 

  def show
   @current_time = Time.now
      if valid_page?
        render template: "pages/#{params[:page]}"
      else
       # render file: "public/404.html", status: :not_found
		
		#redirect_to error_notfound_path, notice: 'Ping-Pong!'
		flash[:notice] = 'Page is not found!'
		flash[:error] = 'Page is not found!!'
		flash[:warning] = 'Page is not found!!!'
		redirect_to error_notfound_path
		#error   warning  notice
		#redirect_to pagenotfound
      end
    end
	
	def index1
	#redirect_to pages_show_path
	#redirect_to :action => 'pagenotfound' ,  notice: 'Welcome back!'
	
    respond_to do |format|
	
        format.html { redirect_to pagenotfound, notice: 'Product was successfully created.' }
	end
		
	end
	

    private
    def valid_page?
      File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
    end
  
  
  

  
end
