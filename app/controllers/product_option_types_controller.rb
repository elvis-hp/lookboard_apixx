class ProductOptionTypesController < ApplicationController
  # GET /product_option_types
  # GET /product_option_types.json
  def index
    @product_option_types = ProductOptionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json:@product_option_types }
    end
  end

  # GET /product_option_types/1
  # GET /product_option_types/1.json
  def show
    @product_option_type = ProductOptionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json:@product_option_type }
    end
  end

  # GET /product_option_types/new
  # GET /product_option_types/new.json
  def new
    @product_option_type = ProductOptionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json:@product_option_type }
    end
  end

  # GET /product_option_types/1/edit
  def edit
    @product_option_type = ProductOptionType.find(params[:id])
  end

  # POST /product_option_types
  # POST /product_option_types.json
  def create
    @product_option_type = ProductOptionType.new(params[:product_option_type])

    respond_to do |format|
      if @product_option_type.save
        format.html { redirect_to @product_option_type, notice:'Product option type was successfully created.' }
        format.json { render json:@product_option_type, status::created, location:@product_option_type }
      else
        format.html { render action:"new" }
        format.json { render json:@product_option_type.errors, status::unprocessable_entity }
      end
    end
  end

  # PUT /product_option_types/1
  # PUT /product_option_types/1.json
  def update
    @product_option_type = ProductOptionType.find(params[:id])

    respond_to do |format|
      if @product_option_type.update_attributes(params[:product_option_type])
        format.html { redirect_to @product_option_type, notice:'Product option type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action:"edit" }
        format.json { render json:@product_option_type.errors, status::unprocessable_entity }
      end
    end
  end

  # DELETE /product_option_types/1
  # DELETE /product_option_types/1.json
  def destroy
    @product_option_type = ProductOptionType.find(params[:id])
    @product_option_type.destroy

    respond_to do |format|
      format.html { redirect_to product_option_types_url }
      format.json { head :no_content }
    end
  end
end
