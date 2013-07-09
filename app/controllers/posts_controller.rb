class PostsController < ApplicationController
before_action :set_post, only: [:show, :edit, :update]

  def index
    @post = Post.all
  end

  def show
    #binding.pry
    @comment = Comment.new


  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post].permit!)
    if @post.save
      redirect_to root_path, notice: "You have successfully created a new post"
    else
      render :new
    end
  end

  def edit

  end

  def update

    if @post.update(params[:post].permit!)
      redirect_to root_path, notice: "You've successfully updated the post"
    else
      render :edit
    end

  end

private

  def set_post
        @post = Post.find(params[:id])
  end

end
