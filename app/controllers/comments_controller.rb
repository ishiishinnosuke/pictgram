class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    comment = Comment.new
    comment.content = params[:comment][:content]
    comment.user_id = current_user.id
    comment.topic_id = params[:comment][:topic_id]
    comment.save
    redirect_to "/topics"
  end

  def destroy
    comment = Comment.find_by(content: params[:content], user_id: current_user.id, topic_id: params[:topic_id])
    comment.delete
    
  end
end
