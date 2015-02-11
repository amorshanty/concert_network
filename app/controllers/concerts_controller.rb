class ConcertsController < ApplicationController

  def home
  	@concerts = Concert.all
  end

  def index
    @concerts = Concert.all
  end

  def show
    @concert = Concert.find params[:id]
  end

  def search
    @concert = Concert.search(params[:search])
    render "home"
  end

  def new
    @concert = Concert.new
  end

  def create 
    @concert = Concert.new(concert_params)
    if @concert.save
      redirect_to action: "index"
    else
      render "new"
    end
  end

  def edit
    @concert = Concert.find(params[:id])    
  end

	def destroy
		@concert = Concert.find(params[:id])
		@concert.destroy
		redirect_to action: 'index'
	end

	def edit
		@concert = Concert.find(params[:id])		
	end

	def update
		@concert = Concert.find(params[:id])
		
		if @concert.update_attributes concert_params
			flash[:notice] = "Concert updated successfully"
			redirect_to action: 'index'
		else
			flash.now[:errors] = @concert.errors.full_messages
			render 'new'
		end		
	end

  private

	  def concert_params
			params.require(:concert).permit(:band, :venue, :city, :date, :price, :description)
		end

end
