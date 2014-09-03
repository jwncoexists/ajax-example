class CoursesController < ApplicationController
  respond_to :html, :js

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course= Course.find(params[:id])
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.json
  def create
    @courses = Course.all
    @course = Course.create(course_params)
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    @courses = Course.all
    @course = Course.find(params[:id])
    
    @course.update_attributes(course_params)
  end

  def delete
    @course = Course.find(params[:course_id])
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @courses = Course.all
    @course = Course.find(params([:course_id]))
    @course.destroy
  end

  private
    # list of params allowed
    def course_params
      params.require(:course).permit(:code, :title, :description, :credits, :id)
    end
end
