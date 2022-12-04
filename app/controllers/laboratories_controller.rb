class LaboratoriesController < ApplicationController
    def show
        @laboratory = Laboratory.find_by(id: params[:id])
        @post = Post.new
        @posts = Post.where(laboratory_id: params[:id])
    end

end
