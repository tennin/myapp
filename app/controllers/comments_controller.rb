class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment].permit!)
    if @comment.save
     redirect_to post_path(params[:post_id]), notice: "Your comment was added."

   else

     render 'posts/show'

   end

  end

end