class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end  
  
  def new
    @post = Post.new
  end  
  def create
    # if make a new agenda
    @post = Post.new(post_new_params)
    # else choose one of existing agendas
    # @post = Post.new(post_existing_params)
    @post.save
    redirect_to agenda_posts_path(@post.agenda_id)
  end
  
  # post를 수정하는 경우는 없다
  # 수정한다면 comment를 수정하겠지
  # 만약 다른 agenda랑 연결하고자 한다면?

  def destroy
    @post = Post.find(params[:id])
    back = @post.agenda_id
    @post.destroy
    redirect_to agenda_posts_path(back)
  end
  
  private
  # params to make a new agenda
  def post_new_params
    params.require(:post).permit(:url, comments_attributes: [:id, :content, :_destroy],
                                  agenda_attributes: [ :id, :name, :color])
  end
  # params to select one of existing agendas
  def post_existing_params
    params.require(:post).permit(:url, :agenda_id, comments_attributes: [:id, :content, :_destroy])
  end

end
