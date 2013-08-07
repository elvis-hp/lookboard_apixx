class UserFollowingsController < ApplicationController
  # GET /user_followings
  # GET /user_followings.json
  def index
    @user_followings = UserFollowing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json:@user_followings }
    end
  end

  # GET /user_followings/1
  # GET /user_followings/1.json
  def show
    @user_following = UserFollowing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json:@user_following }
    end
  end

  # GET /user_followings/new
  # GET /user_followings/new.json
  def new
    @user_following = UserFollowing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json:@user_following }
    end
  end

  # GET /user_followings/1/edit
  def edit
    @user_following = UserFollowing.find(params[:id])
  end

  # POST /user_followings
  # POST /user_followings.json
  def create
    @user_following = UserFollowing.new(params[:user_following])

    respond_to do |format|
      if @user_following.save
        format.html { redirect_to @user_following, notice:'User following was successfully created.' }
        format.json { render json:@user_following, status::created, location:@user_following }
      else
        format.html { render action:"new" }
        format.json { render json:@user_following.errors, status::unprocessable_entity }
      end
    end
  end

  # PUT /user_followings/1
  # PUT /user_followings/1.json
  def update
    @user_following = UserFollowing.find(params[:id])

    respond_to do |format|
      if @user_following.update_attributes(params[:user_following])
        format.html { redirect_to @user_following, notice:'User following was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action:"edit" }
        format.json { render json:@user_following.errors, status::unprocessable_entity }
      end
    end
  end

  # DELETE /user_followings/1
  # DELETE /user_followings/1.json
  def destroy
    @user_following = UserFollowing.find(params[:id])
    @user_following.destroy

    respond_to do |format|
      format.html { redirect_to user_followings_url }
      format.json { head :no_content }
    end
  end
end
