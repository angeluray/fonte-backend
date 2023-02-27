class MarketCategoriesController < ApplicationController
  before_action :set_market_category, only: %i[ show edit update destroy ]

  # GET /market_categories or /market_categories.json
  def index
    @market_categories = MarketCategory.all
  end

  # GET /market_categories/1 or /market_categories/1.json
  def show
  end

  # GET /market_categories/new
  def new
    @market_category = MarketCategory.new
  end

  # GET /market_categories/1/edit
  def edit
  end

  # POST /market_categories or /market_categories.json
  def create
    @market_category = MarketCategory.new(market_category_params)

    respond_to do |format|
      if @market_category.save
        format.html { redirect_to market_category_url(@market_category), notice: "Market category was successfully created." }
        format.json { render :show, status: :created, location: @market_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @market_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /market_categories/1 or /market_categories/1.json
  def update
    respond_to do |format|
      if @market_category.update(market_category_params)
        format.html { redirect_to market_category_url(@market_category), notice: "Market category was successfully updated." }
        format.json { render :show, status: :ok, location: @market_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @market_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_categories/1 or /market_categories/1.json
  def destroy
    @market_category.destroy

    respond_to do |format|
      format.html { redirect_to market_categories_url, notice: "Market category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market_category
      @market_category = MarketCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def market_category_params
      params.require(:market_category).permit(:name)
    end
end
