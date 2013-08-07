class UserWishlistsSharesController < ApplicationController
  # GET /user_wishlists_shares
  # GET /user_wishlists_shares.json
  def index
    @user_wishlists_shares = UserWishlistsShare.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json:@user_wishlists_shares }
    end
  end

  # GET /user_wishlists_shares/1
  # GET /user_wishlists_shares/1.json
  def show
    @user_wishlists_share = UserWishlistsShare.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json:@user_wishlists_share }
    end
  end

  # GET /user_wishlists_shares/new
  # GET /user_wishlists_shares/new.json
  def new
    @user_wishlists_share = UserWishlistsShare.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json:@user_wishlists_share }
    end
  end

  # GET /user_wishlists_shares/1/edit
  def edit
    @user_wishlists_share = UserWishlistsShare.find(params[:id])
  end

  # POST /user_wishlists_shares
  # POST /user_wishlists_shares.json
  def create
    @user_wishlists_share = UserWishlistsShare.new(params[:user_wishlists_share])

    respond_to do |format|
      if @user_wishlists_share.save
        format.html { redirect_to @user_wishlists_share, notice:'User wishlists share was successfully created.' }
        format.json { render json:@user_wishlists_share, status::created, location:@user_wishlists_share }
      else
        format.html { render action:"new" }
        format.json { render json:@user_wishlists_share.errors, status::unprocessable_entity }
      end
    end
  end

  # PUT /user_wishlists_shares/1
  # PUT /user_wishlists_shares/1.json
  def update
    @user_wishlists_share = UserWishlistsShare.find(params[:id])

    respond_to do |format|
      if @user_wishlists_share.update_attributes(params[:user_wishlists_share])
        format.html { redirect_to @user_wishlists_share, notice:'User wishlists share was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action:"edit" }
        format.json { render json:@user_wishlists_share.errors, status::unprocessable_entity }
      end
    end
  end

  # DELETE /user_wishlists_shares/1
  # DELETE /user_wishlists_shares/1.json
  def destroy
    @user_wishlists_share = UserWishlistsShare.find(params[:id])
    @user_wishlists_share.destroy

    respond_to do |format|
      format.html { redirect_to user_wishlists_shares_url }
      format.json { head :no_content }
    end
  end
end
