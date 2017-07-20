class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def show
  end

  def new
  end

  def create

    @user.age = age(@user.dob)

  end

  def edit
  end

  def update
  end

  def delete
  end

  def profile

    @user = User.find(params[:id])

  end

  def age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end


end
