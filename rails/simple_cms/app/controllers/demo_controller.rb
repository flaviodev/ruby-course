class DemoController < ApplicationController
  
  layout false

  def index
    @id = params[:id]
    @page = params[:page]
  end

  def hello
    @array = [1,2,3,4,5]
    #redirect_to(controller: 'demo', action: 'index')
  end

  def about
  end

  def contact
    @country = params[:country]
  end
end
