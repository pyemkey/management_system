class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
  end

  def edit
  end

  def update
  end

  def destroy
  end
end