class FavoritesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  def index
    favorites = Favorite.all
    render json: favorites
  end

  def show
    favorite = find_favorite
    render json: favorite
  end

  def create
    favorite = favorite.create!(favorite_params)
    render json: favorite, status: :created
  end

  def destroy
    favorite = find_favorite
    Favorite.destroy
    head :no_content
  end

  private

  def favorite_params
    params.permit(:pgn)
  end

  def find_favorite
    Favorite.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Favorite not found" }, status: :not_found
  end

  def render_unprocessable_entity(invalid)
    render json: {
             error: invalid.record.errors.full_messages
           },
           status: :unprocessable_entity
  end
end
