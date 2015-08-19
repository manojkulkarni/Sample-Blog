class CommentsController < ApplicationController

	def create
		if params[:comment_desc].present? && params[:post_id].present?
			params[:comment] = { :comment_desc => params[:comment_desc], :post_id => params[:post_id]}
			@comment = Comment.new(comment_params)
		    @comment.save
		    redirect_to post_path(params[:post_id])
		end
	end


	private

	def comment_params
      params.require(:comment).permit(:comment_desc, :post_id)
    end

end
