# frozen_string_literal: true

class PostsController < ApplicationController
  def create
    if current_user.posts.create(post_params)
      flash[:notice] = 'Post was successfully created.'
    else
      flash[:error] = 'Something went wrong'
    end

    redirect_to :root
  end

  protected

  def post_params
    params.require(:post).permit(:body)
  end
end
