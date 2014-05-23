class TeachingAssignmentsController < ApplicationController
  load_and_authorize_resource

  def index
    @teaching_assignments = TeachingAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teaching_assignments }
    end
  end

  def show
    @teaching_assignment = TeachingAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teaching_assignment }
    end
  end

  def new
    @teaching_assignment = TeachingAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teaching_assignment }
    end
  end

  def edit
    @teaching_assignment = TeachingAssignment.find(params[:id])
  end

  def create
    @teaching_assignment = TeachingAssignment.new(params[:teaching_assignment])

    respond_to do |format|
      if @teaching_assignment.save
        format.html { redirect_to @teaching_assignment, notice: 'Teaching assignment was successfully created.' }
        format.json { render json: @teaching_assignment, status: :created, location: @teaching_assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @teaching_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @teaching_assignment = TeachingAssignment.find(params[:id])

    respond_to do |format|
      if @teaching_assignment.update_attributes(params[:teaching_assignment])
        format.html { redirect_to @teaching_assignment, notice: 'Teaching assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @teaching_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @teaching_assignment = TeachingAssignment.find(params[:id])
    @teaching_assignment.destroy

    respond_to do |format|
      format.html { redirect_to teaching_assignments_url }
      format.json { head :no_content }
    end
  end
end
