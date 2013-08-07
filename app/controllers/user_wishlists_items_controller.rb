class UserWishlistsItemsController < ApplicationController
  # GET /user_wishlists_items
  # GET /user_wishlists_items.json
  def index
    @user_wishlists_items = UserWishlistsItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json:@user_wishlists_items }
    end
  end

  # GET /user_wishlists_items/1
  # GET /user_wishlists_items/1.json
  def show
    @user_wishlists_item = UserWishlistsItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json:@user_wishlists_item }
    end
  end

  # GET /user_wishlists_items/new
  # GET /user_wishlists_items/new.json
  def new
    @user_wishlists_item = UserWishlistsItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json:@user_wishlists_item }
    end
  end

  # GET /user_wishlists_items/1/edit
  def edit
    @user_wishlists_item = UserWishlistsItem.find(params[:id])
  end

  # POST /user_wishlists_items
  # POST /user_wishlists_items.json
  def create
    @user_wishlists_item = UserWishlistsItem.new(params[:user_wishlists_item])

    respond_to do |format|
      if @user_wishlists_item.save
        format.html { redirect_to @user_wishlists_item, notice:'User wishlists item was successfully created.' }
        format.json { render json:@user_wishlists_item, status::created, location:@user_wishlists_item }
      else
        format.html { render action:"new" }
        format.json { render json:@user_wishlists_item.errors, status::unprocessable_entity }
      end
    end
  end

  # PUT /user_wishlists_items/1
  # PUT /user_wishlists_items/1.json
  def update
    @user_wishlists_item = UserWishlistsItem.find(params[:id])

    respond_to do |format|
      if @user_wishlists_item.update_attributes(params[:user_wishlists_item])
        format.html { redirect_to @user_wishlists_item, notice:'User wishlists item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action:"edit" }
        format.json { render json:@user_wishlists_item.errors, status::unprocessable_entity }
      end
    end
  end

  # DELETE /user_wishlists_items/1
  # DELETE /user_wishlists_items/1.json
  def destroy
    @user_wishlists_item = UserWishlistsItem.find(params[:id])
    @user_wishlists_item.destroy

    respond_to do |format|
      format.html { redirect_to user_wishlists_items_url }
      format.json { head :no_content }
    end
  end
end
