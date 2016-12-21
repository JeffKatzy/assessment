class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new

  def create
    @user = User.create(params[:name], params[:hometown])
  end
  # POST /users

  def index
    @users = User.all
  end
  # GET /users

  def show
    @user = User.find(params[:id])
  end
  # GET /users/:id

  def edit
    @user = User.find(params[:id])
  end
  # GET /users/:id/edit

  def update
    user = User.find(params[:id])
    @user = user.update_attributes(name: params[:name], hometown: params[:hometown])
  end
  # PUT /users/:id

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
  # DELETE /users/:id

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
