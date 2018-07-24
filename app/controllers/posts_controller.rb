class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    # redirect_toメソッドを用いて、自動的に投稿一覧ページに転送されるようにしてください
    def create
      @post=Post.new(content: params[:content])
      @post.save
      redirect_to("/posts/index")
    end
  end
end
