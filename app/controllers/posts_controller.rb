class PostsController < ApplicationController
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id #assign the post 
        respond_to do |f|
            if(@post.save)
                f.html{ redirect_to "", notice: "Tweet saved"}
            else
                f.html{ redirect_to "", notice: "Error:Tweet not saved"}
            end
        end
    end
    
    private
    def post_params# allows certaind data to be passed via form
        
       params.require(:post).permit(:user_id, :content)
    
    end
end