class UserWishlistsController < ApplicationController
  # GET /user_wishlists
  # GET /user_wishlists.json
  def index
    @user_wishlists = UserWishlist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json:@user_wishlists }
    end
  end

  # GET /user_wishlists/1
  # GET /user_wishlists/1.json
  def show
    @user_wishlist = UserWishlist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json:@user_wishlist }
    end
  end

  # GET /user_wishlists/new
  # GET /user_wishlists/new.json
  def new
    @user_wishlist = UserWishlist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json:@user_wishlist }
    end
  end

  # GET /user_wishlists/1/edit
  def edit
    @user_wishlist = UserWishlist.find(params[:id])
  end

  # POST /user_wishlists
  # POST /user_wishlists.json
  def create
    @user_wishlist = UserWishlist.new(params[:user_wishlist])

    respond_to do |format|
      if @user_wishlist.save
        format.html { redirect_to @user_wishlist, notice:'User wishlist was successfully created.' }
        format.json { render json:@user_wishlist, status::created, location:@user_wishlist }
      else
        format.html { render action:"new" }
        format.json { render json:@user_wishlist.errors, status::unprocessable_entity }
      end
    end
  end

  # PUT /user_wishlists/1
  # PUT /user_wishlists/1.json
  def update
    @user_wishlist = UserWishlist.find(params[:id])

    respond_to do |format|
      if @user_wishlist.update_attributes(params[:user_wishlist])
        format.html { redirect_to @user_wishlist, notice:'User wishlist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action:"edit" }
        format.json { render json:@user_wishlist.errors, status::unprocessable_entity }
      end
    end
  end

  # DELETE /user_wishlists/1
  # DELETE /user_wishlists/1.json
  def destroy
    @user_wishlist = UserWishlist.find(params[:id])
    @user_wishlist.destroy

    respond_to do |format|
      format.html { redirect_to user_wishlists_url }
      format.json { head :no_content }
    end
  end
end
