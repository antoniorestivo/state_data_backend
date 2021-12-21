class Api::StatesController < ApplicationController

  def index
    @states = State.all
    render json: @states
  end
  def show
    @code = Code.find_by(code: params[:code])
    Rails.logger.info "logging code data" + @code.to_s
    @state = State.find_by(state: @code.state)
    render json: @state
  end
end