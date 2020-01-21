# frozen_string_literal: true

class ProfileController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find(current_user.id)
    @post = Post.new

    @user_posts = current_user.posts
  end
end