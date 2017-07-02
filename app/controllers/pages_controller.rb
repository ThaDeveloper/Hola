class PagesController < ApplicationController
  #back-end code for pages/index
  def index
  end

  def home
  end

  def profile
    #grab the username from the URL as :id
    if(User.find_by_username(params[:id]))
    @username = params[:id]
    else
      #redirect to 400(root for now)
      redirect_to root_path, :notice=>  "Username not found"
    end
  end

  def explore
  end
end
