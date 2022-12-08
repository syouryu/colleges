class PostsController < ApplicationController
  before_action :authenticate_user

  def create
    # puts params
    post_params = params[:post]
    post = Post.new(title: post_params[:title], body: post_params[:body], user_id: params[:user_id],
                    laboratory_id: params[:laboratory_id])
    puts post.inspect
    if post.save
      laboratory = post.laboratory
      flash[:notice] = '新規投稿が完了しました'
      redirect_to graduate_schools_laboratory_path(laboratory.graduate_school_id, laboratory.id)
    else
      flash[:notice] = '投稿できませんでした'
      render graduate_schools_laboratory_path(laboratory.graduate_school_id, laboratory.id)
    end
  end

  def edit
    # NOTE: id名をルーティングに合わせて修正した
    @post = Post.find_by(id: params[:post_id])
    @laboratory = Laboratory.find_by(id: params[:laboratory_id])
  end

  def update
    # TODO: id名をルーティングに合わせて修正する必要あり
    @laboratory = Laboratory.find_by(id: params[:id])
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save
    redirect_to("/graduate_schools/#{@laboratory.graduate_school_id}/laboratories/#{@post.laboratory_id}/show")
  end
end
