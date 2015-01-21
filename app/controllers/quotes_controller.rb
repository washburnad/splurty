class QuotesController < ApplicationController
	def index
	  @quote = Quote.order("Random()").first
	end

	def new
	  @quote = Quote.new
	end

	def create
	  @quote = Quote.create(quote_params)

	  if @quote.invalid?
	  	flash[:error] = '<strong>Could not save quote.</strong>  The input is invalid.'
	  end
	  redirect_to root_path
	end

	private

	def quote_params
		params.require(:quote).permit(:saying, :author)
	end

end
