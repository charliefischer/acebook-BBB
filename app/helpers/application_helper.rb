# frozen_string_literal: true

module ApplicationHelper

  def liked?(subject)
  result = false
  result = Like.where(user_id: current_user.id, post_id: subject.id).exists?

  result
  end
  
end
