class CookingStylesController < ApplicationController
  before_action :set_cooking_style, only: [:show, :edit, :update, :destroy]

  # GET /cooking_styles
  # GET /cooking_styles.json
  def index
    @cooking_styles = CookingStyle.all
  end

  # GET /cooking_styles/1
  # GET /cooking_styles/1.json
  def show
  end

  # GET /cooking_styles/new
  def new
    @cooking_style = CookingStyle.new
  end

  # GET /cooking_styles/1/edit
  def edit
  end

  # POST /cooking_styles
  # POST /cooking_styles.json
  def create
    @cooking_style = CookingStyle.new(cooking_style_params)

    respond_to do |format|
      if @cooking_style.save
        format.html { redirect_to @cooking_style, notice: 'Cooking style was successfully created.' }
        format.json { render :show, status: :created, location: @cooking_style }
      else
        format.html { render :new }
        format.json { render json: @cooking_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cooking_styles/1
  # PATCH/PUT /cooking_styles/1.json
  def update
    respond_to do |format|
      if @cooking_style.update(cooking_style_params)
        format.html { redirect_to @cooking_style, notice: 'Cooking style was successfully updated.' }
        format.json { render :show, status: :ok, location: @cooking_style }
      else
        format.html { render :edit }
        format.json { render json: @cooking_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cooking_styles/1
  # DELETE /cooking_styles/1.json
  def destroy
    @cooking_style.destroy
    respond_to do |format|
      format.html { redirect_to cooking_styles_url, notice: 'Cooking style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cooking_style
      @cooking_style = CookingStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cooking_style_params
      params.require(:cooking_style).permit(:name, :cuisine_id)
    end
end
