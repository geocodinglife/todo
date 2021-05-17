class Api::V1::SubtasksController < ApplicationController
  before_action :authenticate_user!
  before_action :subtask_params, only: [:show, :update, :destroy]

  def index
    @subtasks = Subtask.all
    render json: @subtasks
  end

  def show
    render json: @subtask
  end

  def create
    @subtask = Subtask.new(subtask_params)

    if @subtask.save
      render json: @task, status: :created
    else
      render json: @subtask.errors, status: :unprocessable_entity
    end
  end

  def update
    if @subtask.update(subtask_params)
      render json: @subtask
    else
      render json: @subtask.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @subtask.destroy
  end

  private
    def set_subtask
      @subtask = Task.find(params[:id])
    end

    def subtask_params
      params.require(:task).permit(:name, :description, :position, :priority, :state)
    end
end

