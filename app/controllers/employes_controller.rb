class EmployesController < ApplicationController
  before_action :set_employe, only: [:show, :edit, :update, :destroy, :remove_project, :add_project]

  # GET /employes
  # GET /employes.json
  def index
    @employes = Employe.all
  end

  # GET /employes/1
  # GET /employes/1.json
  def show
    @projects = @employe.projects
  end

  # GET /employes/new
  def new
    @employe = Employe.new
  end

  # GET /employes/1/edit
  def edit
  end

  def remove_project
    @project = Project.find_by(id: params[:project_id])
    @employe.projects.delete(@project)
    redirect_to employe_path(@employe), notice: 'Project has been removed from Employe'
  end

  def add_project
    @project = Project.find_by(id: params[:project_id])
    @employe.projects << @project
    redirect_to employe_path(@employe), notice: 'Project has been added'
  end

  # POST /employes
  # POST /employes.json
  def create
    @employe = Employe.new(employe_params)

    respond_to do |format|
      if @employe.save
        format.html { redirect_to @employe, notice: 'Employe was successfully created.' }
        format.json { render :show, status: :created, location: @employe }
      else
        format.html { render :new }
        format.json { render json: @employe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employes/1
  # PATCH/PUT /employes/1.json
  def update
    respond_to do |format|
      if @employe.update(employe_params)
        format.html { redirect_to @employe, notice: 'Employe was successfully updated.' }
        format.json { render :show, status: :ok, location: @employe }
      else
        format.html { render :edit }
        format.json { render json: @employe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employes/1
  # DELETE /employes/1.json
  def destroy
    @employe.destroy
    respond_to do |format|
      format.html { redirect_to employes_url, notice: 'Employe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employe
      @employe = Employe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employe_params
      params.require(:employe).permit(:name)
    end
end
