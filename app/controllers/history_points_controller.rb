class HistoryPointsController < ApplicationController
  before_action :set_history_point, only: %i[ show update destroy ]

  # GET /history_points
  def index
    @history_points = HistoryPoint.all

    render json: @history_points
  end

  # GET /history_points/1
  def show
    render json: @history_point
  end

  # POST /history_points
  def create
    @history_point = HistoryPoint.new(history_point_params)

    if @history_point.save
      render json: @history_point, status: :created, location: @history_point
    else
      render json: @history_point.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /history_points/1
  def update
    if @history_point.update(history_point_params)
      render json: @history_point
    else
      render json: @history_point.errors, status: :unprocessable_entity
    end
  end

  # DELETE /history_points/1
  def destroy
    @history_point.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history_point
      @history_point = HistoryPoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def history_point_params
      params.require(:history_point).permit(:store_id, :score_id, :used_points, :recived, :time)
    end
end
