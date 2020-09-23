class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :update]
 
  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end
 
  def create
    byebug
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update 
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: {user: UserSerializer.new(@user)}
  end 
 
  private
 
  def user_params
    params.require(:user).permit(:username, :password, :avatar, :firstname, :lastname, :token)
  end

end
