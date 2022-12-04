class PostsController < ApplicationController
    
  
  def create
    # puts params
    post_params = params[:post]
    post = Post.new(title: post_params[:title], body: post_params[:body], user_id: params[:user_id], laboratory_id: params[:laboratory_id])
    puts post.inspect
    if post.save
      laboratory = post.laboratory
      flash[:notice] = '新規投稿が完了しました'
      redirect_to graduate_schools_laboratory_path(laboratory.graduate_school_id, laboratory.id)
    else
      puts post.errors.full_messages
    end  
  end 
end
