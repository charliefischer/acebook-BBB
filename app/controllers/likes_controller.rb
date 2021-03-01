class LikesController < ApplicationController
  include ApplicationHelper

  def create
    if already_liked?
      dislike
    else
      @like.likes.build(user_id: current_user.id)
      if @like.save
        flash[:success] = "Post liked!"
      else
        flash[:danger] = "Post like failed!"
      end
      redirect_back(fallback_location: root_path)
    end
  end


  def already_liked?
    result = false
    if result = Like.where(user_id: current_user.id, post_id: params[post_id]).exists?
    end
    result
  end

  def dislike
    @like = Like.find_by(post_id: params[:post_id])
    return unless @like
    @like.destroy
    redirect_back(fallback_location: root_path)
  end

end
