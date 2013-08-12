class UsersController < ApplicationController
  def index
    @page = params[:page] ? params[:page].to_i : 1
    @users = User.by_karma.page(@page)
  end
end
