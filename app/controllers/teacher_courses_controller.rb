class TeacherCoursesController < ApplicationController
  before_action :set_teacher_course, only: [:show, :edit, :update, :destroy]

  def index
    @teacher_courses = TeacherCourse.all
  end

  def show
  end

  def new
    @teacher_course = TeacherCourse.new
  end

  def edit
  end

  def create
    @teacher_course = TeacherCourse.new(teacher_course_params)

    if @teacher_course.save
      redirect_to @teacher_course
    else
      render :new 
    end
  end

  def update
    if @teacher_course.update(teacher_course_params)
      redirect_to @teacher_course
    else
      render :edit 
    end
  end

  def destroy
    @teacher_course.destroy
    redirect_to teacher_courses_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_course
      @teacher_course = TeacherCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_course_params
      params.require(:teacher_course).permit(:year, :course_id, :course_type_id)
    end
end
