class UserController < ApplicationController
  def index
    @users_all = User
  end
end
