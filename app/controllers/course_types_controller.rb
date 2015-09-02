class CourseTypesController < ApplicationController
  before_action :set_course_type, only: [:show, :edit, :update, :destroy]

  def index
    @course_types = CourseType.all
  end

  def show
  end

  def new
    @course_type = CourseType.new
  end

  def edit
  end

  def create
    @course_type = CourseType.new(course_type_params)

    if @course_type.save
      redirect_to @course_type
    else
      render :new
    end
  end

  def update
    if @course_type.update(course_type_params)
      redirect_to @course_type
    else
      render :edit
    end
  end

  def destroy
    @course_type.destroy

    redirect_to course_types_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_type
      @course_type = CourseType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_type_params
      params.require(:course_type).permit(:name)
    end
end
