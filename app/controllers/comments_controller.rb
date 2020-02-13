class CommentsController < ApplicationController

  def show
    @gossips_comments = []
    @gossip = Gossip.find(params[:id])
    Comment.where(gossip_id: params[:id]).each do |comment|
      @gossips_comments << comment
    end
  end

  def new
  end

  def create
    @comment = Comment.new
		@comment.content = params[:content]
		@comment.user = User.find_by(first_name: params[:user])
    @comment.save	
    @gossips_comments << @comment
    	
		redirect_to gossips_path
  end
end
