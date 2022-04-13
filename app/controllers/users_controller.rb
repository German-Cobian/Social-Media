class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  # rubocop:disable Layout/RescueEnsureAlignment
  def show
    @user = begin User.find(params[:id])
    rescue StandardError
    current_user
    end
    # rubocop:enable Layout/RescueEnsureAlignment

    @posts = @user.posts.ordered_by_most_recent
  end
end
