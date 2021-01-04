class MailController < ApplicationController

	def menu
	end

	def autoReply
		@reply = Reply.new
	end

	def complete
		@reply = Reply.create(reply_params)
	end

	def list
		@replies = Reply.all
	end

	def destroy
		@reply = Reply.find(params[:id])
                @reply.destroy
		@replies = Reply.all
		render :list
	end

	private
	def reply_params
		params.require(:reply).permit(:name, :keyward, :subject, :text)
	end

end