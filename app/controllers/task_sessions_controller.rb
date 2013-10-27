class TaskSessionsController < ApplicationController
  before_action :set_task_session, only: [:show, :edit, :update, :destroy]

  # GET /task_sessions
  # GET /task_sessions.json
  def index
    @task_sessions = TaskSession.all
  end

  # GET /task_sessions/1
  # GET /task_sessions/1.json
  def show
  end

  # GET /task_sessions/new
  def new
    @task_session = TaskSession.new
  end

  # GET /task_sessions/1/edit
  def edit
  end

  # POST /task_sessions
  # POST /task_sessions.json
  def create
    @task_session = TaskSession.new(task_session_params)

    respond_to do |format|
      if @task_session.save
        format.html { redirect_to @task_session, notice: 'Task session was successfully created.' }
        format.json { render action: 'show', status: :created, location: @task_session }
      else
        format.html { render action: 'new' }
        format.json { render json: @task_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_sessions/1
  # PATCH/PUT /task_sessions/1.json
  def update
    respond_to do |format|
      if @task_session.update(task_session_params)
        format.html { redirect_to @task_session, notice: 'Task session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @task_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_sessions/1
  # DELETE /task_sessions/1.json
  def destroy
    @task_session.destroy
    respond_to do |format|
      format.html { redirect_to task_sessions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_session
      @task_session = TaskSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_session_params
      params.require(:task_session).permit(:title, :progress, :admin)
    end
end
