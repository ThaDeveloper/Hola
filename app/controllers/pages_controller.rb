class PagesController < ApplicationController
  #back-end code for pages/index
  def index
  end

  def home
    @posts = Post.all
    @newPost = Post.new
  end

  def profile
    #grab the username from the URL as :id
    if(User.find_by_username(params[:id]))
    @username = params[:id]
    else
      #redirect to 400(root for now)
      redirect_to root_path, :notice=>  "Username not found"
    end
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    @newPost = Post.new
   
       @toFollow = User.all.last(5)
  end

  def explore
    @posts = Post.all
    @newPost = Post.new
      @toFollow = User.all.last(5)
  end
end
