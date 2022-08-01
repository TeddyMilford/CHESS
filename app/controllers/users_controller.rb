class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  def index
    users = User.all
    render json: users
  end

  def show
    user = find_user
    render json: user
  end

  # will remove most likely
  def update
    user = find_user
    user.update!(user_params)
    render json: user
  end

  def create
    user = user.create!(user_params)
    render json: user, status: :created
  end

  def destroy
    user = find_user
    User.destroy
    head :no_content
  end

  private

  def user_params
    params.permit(:pgn)
  end

  def find_user
    User.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "User not found" }, status: :not_found
  end

  def render_unprocessable_entity(invalid)
    render json: {
             error: invalid.record.errors.full_messages
           },
           status: :unprocessable_entity
  end
end
