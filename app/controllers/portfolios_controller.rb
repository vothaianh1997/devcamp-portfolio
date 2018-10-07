class PortfoliosController < ApplicationController
  layout "portfolio"

  def index
    @portfolio_item = Portfolio.all
  end
  def angular
    @angular_portfolio_items = Portfolio.angular
  end
  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])

  end

  def update
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully update.' }
      else
        format.html { render :edit }
      end
    end
end

  def show
    @portfolio_item = Portfolio.find(params[:id])

  end

  def destroy
    #Perform the lookup
    @portfolio_item = Portfolio.find(params[:id])

    #Destroy/delete the record
    @portfolio_item.destroy
    #Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Blog was successfully destroyed.' }
    end
  end

  def set_portfolio_item
   @portfolio_item = Portfolio.find(params[:id])
  end
  def portfolio_params
    params.require(:portfolio).permit(:title,:subtitle,:body,:image, technologies_attributes: [:name])
  end
end
