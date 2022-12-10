class LaboratoriesController < ApplicationController
  def show
    @laboratory = Laboratory.find_by(id: params[:id])
    @post = Post.new
    @posts = Post.where(laboratory_id: params[:id]).order("created_at DESC").first(50)
    
  end
end
