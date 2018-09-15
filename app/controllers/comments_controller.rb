class CommentsController < ApplicationController
  def new
  @comment = Comment.new
  end
  
  def create
  @article = Article.find(params[:article_id])
  @comment = @article.comments.create(comment_params)
  redirect_to article_path(@article)
  end
  
  def edit
  @comment = Comment.find(params[:id])
  end

  def show
  @comment = Comment.find(params[:id])
  end

  def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to comments_path
  end

  def update
  end
  
  private
  def comment_params
   params.require(:comment).permit(:commenter,:body)
  end
  
end
