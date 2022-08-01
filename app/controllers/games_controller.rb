class GamesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  def index
    games = Game.all
    render json: games
  end

  def show
    game = find_game
    render json: game
  end

  def create
    game = Game.create!(game_params)
    render json: game, status: :created
  end

  def destroy
    game = find_game
    Game.destroy
    head :no_content
  end

  private

  def game_params
    params.permit(:pgn)
  end

  def find_game
    Game.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Game not found" }, status: :not_found
  end

  def render_unprocessable_entity(invalid)
    render json: {
             error: invalid.record.errors.full_messages
           },
           status: :unprocessable_entity
  end
end
