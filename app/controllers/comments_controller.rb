class CommentsController < ApplicationController
	def create
		comment = Comment.new(comment_params)
		if comment.save
			flash[:success] = 'コメントを投稿しました'
			redirect_to("/")
		else
			redirect_to("/posts/index")
			flash[:danger]= "コメントを入力してください"
		end
	end
  #
	# def destroy
	# 	comment = Comment.find(params[:id])
  #   comment.delete
  #   redirect_to comment.portfolio, flash: { danger: 'コメントが削除されました' }
	# end

	private

	def comment_params
    params.require(:comment).permit(:post_id, :comment, :user_id)
  end
end
