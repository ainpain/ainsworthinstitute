class UsersController < ApplicationController

  def create
    User.create(:email=>params[:email])
  end

end