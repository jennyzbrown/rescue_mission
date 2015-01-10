class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
      @question = Question.find(params[:question_id])
      @comment = @question.comments.create(comment_params)

      if @comment.save
         redirect_to question_path(@question)
      else
        render 'new'
      end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to question_path(@question)
  end


  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
