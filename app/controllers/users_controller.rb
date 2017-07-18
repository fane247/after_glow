class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def profile

    @user = current_user

  end

end
